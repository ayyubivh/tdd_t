import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/mash/domain/entities/tc/tc_status_entity.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/loader.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';
import 'package:mash/mash/presentation/widgets/buttons/animted_button.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';

import '../../../manager/bloc/tc_bloc/tc_bloc.dart';
import '../../../utils/app_colors.dart';
import '../../../widgets/drawer_widget.dart';

class TransferCancelScreen extends StatefulWidget {
  const TransferCancelScreen({super.key});

  @override
  State<TransferCancelScreen> createState() => _TransferCancelScreenState();
}

class _TransferCancelScreenState extends State<TransferCancelScreen> {
  @override
  void initState() {
    BlocProvider.of<TcBloc>(context).add(const TcEvent.getTcStatus());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      endDrawer: const DrawerWidget(),
      appBar: commonAppbar(title: 'TC CANCEL'),
      body: tcCancelBody(context),
    );
  }

  Widget tcCancelBody(context) {
    var size = MediaQuery.sizeOf(context);
    return BlocBuilder<TcBloc, TcState>(
      builder: (context, state) {
        if (state.tcStatusResponse.status == Status.LOADING) {
          return const Loader();
        }
        if (state.tcStatusResponse.status == Status.ERROR) {
          return Center(child: Text('Error: ${state.tcStatusResponse.error}'));
        }

        final data = state.tcStatusResponse.data ?? [];
        return Container(
          padding: const EdgeInsets.all(15),
          height: size.height,
          width: size.width,
          child: ListView.separated(
              itemBuilder: (context, index) {
                return transferCard(size, data[index]);
              },
              separatorBuilder: (context, index) {
                return spacer10;
              },
              itemCount: data.length),
        );
      },
    );
  }

  Widget transferCard(Size size, TcStatusEntity data) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5.0,
          ),
        ],
      ),
      width: size.width,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              imageAndName(data.studentName ?? "", data.photoPath ?? ''),
              Expanded(child: detailAndCancel(data)),
            ],
          ),
          cancelButton(data.tcId),
        ],
      ),
    );
  }

  Widget imageAndName(String name, String image) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: CachedNetworkImageProvider(image),
        ),
        const SizedBox(height: 10),
        Text(
          name,
          style: TextStyle(
            fontSize: SizeConfig.textSize(18),
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget detailAndCancel(TcStatusEntity data) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          detailRow(Icons.date_range, 'Applied Date', data.appliedDate ?? ""),
          detailRow(Icons.calendar_today, 'Expected Relieve Date',
              data.expectedRelieveDate ?? ""),
          detailRow(Icons.info_outline, 'Reason', data.reason ?? ""),
          const Divider(height: 20, thickness: 1),
        ],
      ),
    );
  }

  Widget detailRow(IconData icon, String title, String data) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Icon(icon, color: AppColors.primaryColor),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              '$title: $data',
              style: TextStyle(
                fontSize: SizeConfig.textSize(16),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget cancelButton(String tcId) {
    return Center(
      child: AnimatedSharedButton(
        width: SizeConfig.width(200),
        onTap: () {
          BlocProvider.of<TcBloc>(context).add(TcEvent.cancelTc(tcId, context));
          context.pop();
        },
        title: Text(
          'CANCEL TC',
          style: TextStyle(color: AppColors.white, fontWeight: FontWeight.w700),
        ),
        isLoading: false,
      ),
    );
  }
}
