import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/mash/domain/entities/id_module/id_request_entity.dart';
import 'package:mash/mash/presentation/manager/bloc/id_request/id_request_bloc.dart';
import 'package:mash/mash/presentation/manager/bloc/profile_bloc/profile_bloc.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/utils/helper_classes.dart';
import 'package:mash/mash/presentation/widgets/buttons/animted_button.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:mash/mash/presentation/widgets/common_bottom_sheet.dart';
import 'package:mash/mash/presentation/widgets/common_gesture_detector.dart';
import 'package:mash/mash/presentation/widgets/common_text_field.dart';
import 'package:mash/mash/presentation/widgets/drawer_widget.dart';

import '../../../../../core/response_classify.dart';
import '../../../utils/handle_error.dart';

class IdCardRequestScreen extends StatefulWidget {
  const IdCardRequestScreen({super.key});

  @override
  State<IdCardRequestScreen> createState() => _IdCardRequestScreenState();
}

class _IdCardRequestScreenState extends State<IdCardRequestScreen> {
  final TextEditingController _requestController = TextEditingController();
  final TextEditingController _remarksController = TextEditingController();

  @override
  void initState() {
    IdRequestBloc.get(context)
        .add(const IdRequestEvent.getTransferRequestEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: AppStrings.idCardRequest),
      endDrawer: const DrawerWidget(),
      body: idRequestBody(context),
    );
  }

  idRequestBody(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Container(
      height: size.height,
      width: size.width,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            titleText(AppStrings.studentName),
            HelperClasses.getSelectedStudent(context, true),
            titleText(AppStrings.request),
            BlocConsumer<IdRequestBloc, IdRequestState>(
              listener: (context, state) {
                if (state.getIdRequestType?.status == Status.ERROR) {
                  handleErrorUi(
                      context: context, error: state.getIdRequestType?.error);
                }else if(state.postIdRequest?.status == Status.COMPLETED){
                  HelperClasses.showSnackBar(msg: 'Request Submitted Successfully');
                  context.pop();
                }
              },
              builder: (context, state) {
                return CommonGestureDetector(
                    onTap: () => _openOptionsBottomSheet(
                        context,
                        _requestController,
                        AppStrings.selectModule,
                        state.getIdRequestType!.data!),
                    icon: Icons.arrow_drop_down_circle,
                    textController: _requestController,
                    hintText: AppStrings.requestType);
              },
            ),
            titleText(AppStrings.remarks),
            CommonTextField(
                isOutlined: true,
                controller: _remarksController,
                lines: 4,
                title: AppStrings.enterRemarks),
            spacer30,
            BlocBuilder<IdRequestBloc, IdRequestState>(
              builder: (context, state) {
                return AnimatedSharedButton(
                  onTap: () {
                    var state = context.read<IdRequestBloc>().state;
                    var siblingInfo = context
                        .read<ProfileBloc>()
                        .state
                        .getUserDetail
                        ?.data
                        ?.usrId;
                    if (state.index == null) {
                      prettyPrint('Please select request type');
                    } else {
                      IdRequestBloc.get(context).add(
                          IdRequestEvent.idPostRequest(
                              reqId: state
                                  .getIdRequestType!.data![state.index!].tabId,
                              remarks: _remarksController.text,
                              userId: siblingInfo.toString()));
                    }
                  },
                  title: Text(
                    AppStrings.submitCapital,
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: AppColors.white),
                  ),
                  isLoading: state.postIdRequest?.status == Status.LOADING,
                );
              },
            )
          ],
        ),
      ),
    );
  }

  titleText(title) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 10),
      child: Text(
        title,
        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
      ),
    );
  }

  void _openOptionsBottomSheet(
      BuildContext context,
      TextEditingController controller,
      String sheetTitle,
      List<IdRequestEntity> requestTypes) {
    commonBottomSheet(
      context,
      height: 0.40,
      title: 'Select Module',
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Text(
              sheetTitle,
              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
            ),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: requestTypes.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(requestTypes[index].request),
                      onTap: () {
                        IdRequestBloc.get(context)
                            .add(IdRequestEvent.selectRequestId(index: index));
                        controller.text = requestTypes[index].request;
                        Navigator.of(context).pop();
                      },
                    );
                  }))
        ],
      ),
    );
  }
}
