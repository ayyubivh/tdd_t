import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/mash/presentation/manager/bloc/addon_bloc/add_on_bloc.dart';
import 'package:mash/mash/presentation/utils/helper_classes.dart';
import 'package:mash/mash/presentation/utils/loader.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';
import 'package:mash/mash/presentation/widgets/add_on_detail_card.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../widgets/drawer_widget.dart';

class AddonDetailScreen extends StatefulWidget {
  final String? addOnId;
  final String? addOnType;

  const AddonDetailScreen({super.key, required this.addOnId, this.addOnType});

  @override
  State<AddonDetailScreen> createState() => _AddonDetailScreenState();
}

class _AddonDetailScreenState extends State<AddonDetailScreen> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<AddOnBloc>(context)
        .add(AddOnEvent.getAddOnDetail(
        categoryId: widget.addOnId ?? '', categorytype: widget.addOnType ?? ''));
    prettyPrint('******** add on data ***********');
    prettyPrint("${widget.addOnId}");
    prettyPrint("${widget.addOnType}");
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: commonAppbar(title: 'Explore'),
      endDrawer: const DrawerWidget(),
      body: addOnDetailBody(),
    );
  }

  addOnDetailBody() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: BlocBuilder<AddOnBloc, AddOnState>(
        builder: (context, state) {
          prettyPrint('********data check********');
          prettyPrint('${state.getAddOnDetailData.data?.length}');
          return state.getAddOnDetailData.status == Status.LOADING
              ? const Loader()
              : state.getAddOnDetailData.data!.isEmpty ? HelperClasses.emptyDataWidget():  ListView.builder(
              itemBuilder: (context, index) {
                return AddOnDetailCard(
                    cardImage:
                    state.getAddOnDetailData.data?[index]?.imgUrl ?? '',
                    onPress: ()=>_launchUrl(state.getAddOnDetailData.data?[index]?.links ?? ''),
                    title:  state.getAddOnDetailData.data?[index]?.subCategoryName ?? '',
                    description:
                    state.getAddOnDetailData.data?[index]?.description ?? '');
              },
              itemCount: state.getAddOnDetailData.data?.length ?? 0);
        },
      ),
    );
  }

  sizedBox(double height) {
    return SizedBox(
      height: height,
    );
  }

  _launchUrl(link) async {
    if (!await launchUrl(Uri.parse(link))) {
      throw Exception('Could not launch $link');
    }
  }
}
