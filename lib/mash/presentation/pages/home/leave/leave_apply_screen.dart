import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path/path.dart' as path;

import 'package:mash/core/upload_service.dart';
import 'package:mash/mash/data/remote/request/leave_attachment_model.dart';
import 'package:mash/mash/presentation/manager/bloc/leave_bloc/leave_bloc.dart';
import 'package:mash/mash/presentation/pages/home/leave/widgets/common_icon_button.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/widgets/buttons/animted_button.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:mash/mash/presentation/widgets/common_text_field.dart';
import 'package:mash/mash/presentation/widgets/drawer_widget.dart';

class LeaveApplyScreen extends StatelessWidget {
  const LeaveApplyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: AppStrings.applyLeave),
      endDrawer: const DrawerWidget(),
      body: const ApplyLeaveBody(),
    );
  }
}

class ApplyLeaveBody extends StatefulWidget {
  const ApplyLeaveBody({super.key});

  @override
  State<ApplyLeaveBody> createState() => _ApplyLeaveBodyState();
}

class _ApplyLeaveBodyState extends State<ApplyLeaveBody> {
  final TextEditingController _fromDateController = TextEditingController();
  final TextEditingController _toDateController = TextEditingController();
  final TextEditingController _reasonController = TextEditingController();
  final TextEditingController dateCountController = TextEditingController();

  DateTime? _fromDate;
  DateTime? _toDate;

  Future<void> _selectDate(BuildContext context,
      TextEditingController controller, bool isFromDate) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2050),
    );
    if (picked != null) {
      if (isFromDate) {
        _fromDate = picked;
        BlocProvider.of<LeaveBloc>(context).add(LeaveEvent.saveLeaveAttachments(
            const LeaveAttachmentModel()
                .copyWith(fromDate: "${picked.toLocal()}".split(' ')[0])));
      } else {
        _toDate = picked;
        BlocProvider.of<LeaveBloc>(context).add(LeaveEvent.saveLeaveAttachments(
            const LeaveAttachmentModel()
                .copyWith(toDate: "${picked.toLocal()}".split(' ')[0])));
      }
      controller.text = "${picked.toLocal()}".split(' ')[0];
      _updateDateCount();
    }
  }

  void _updateDateCount() {
    if (_fromDate != null && _toDate != null) {
      final int days = _toDate!.difference(_fromDate!).inDays;
      dateCountController.text = days.toString();
    } else {
      dateCountController.text = '';
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: size.height,
      width: size.width,
      child: SingleChildScrollView(
        // Added to prevent overflow
        child: BlocBuilder<LeaveBloc, LeaveState>(
          builder: (context, state) {
            final data = state.leaveAttachmentModel;
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                titleText(AppStrings.fromDate),
                dateSelection(_fromDateController, true),
                spacer20,
                titleText(AppStrings.toDate),
                dateSelection(_toDateController, false),
                spacer20,
                titleText(AppStrings.appliedLeaveCount),
                dateCountWidget(),
                spacer20,
                titleText(AppStrings.leaveReason),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: CommonTextField(
                      controller: _reasonController,
                      lines: 3,
                      title: AppStrings.enterReason),
                ),
                spacer7,
                infoText(AppStrings.docInfo),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: CommonIconButton(
                        onTap: () async {
                          final file =
                              await UploadService().pickImageFromGallery();
                          if (file != null) {
                            BlocProvider.of<LeaveBloc>(context).add(
                                LeaveEvent.saveLeaveAttachments(
                                    const LeaveAttachmentModel()
                                        .copyWith(uploadPhoto: file.path)));
                          }
                        },
                        title: AppStrings.upload,
                        icon: Icons.file_upload_outlined,
                      ),
                    ),
                    Expanded(
                        child: Text(path.basename(data?.uploadPhoto ?? "")))
                  ],
                ),
                spacer20,
                if (data?.takePhoto != null)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: Image.file(
                      File(data!.takePhoto!),
                      height: 250,
                      width: double.infinity,
                      fit: BoxFit.fill,
                    ),
                  ),
                spacer20,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: AnimatedSharedButton(
                      onTap: () async {
                        final path =
                            await UploadService().pickImageFromCamera();
                        if (path != null) {
                          BlocProvider.of<LeaveBloc>(context).add(
                              LeaveEvent.saveLeaveAttachments(
                                  const LeaveAttachmentModel()
                                      .copyWith(takePhoto: path.path)));
                        }
                      },
                      title: Text(
                        data?.takePhoto == null
                            ? AppStrings.takePhoto
                            : AppStrings.request,
                        style: TextStyle(color: AppColors.white),
                      ),
                      isLoading: false),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  dateSelection(TextEditingController controller, bool isFromDate) {
    return GestureDetector(
      onTap: () => _selectDate(context, controller, isFromDate),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Card(
            elevation: 2,
            surfaceTintColor: AppColors.primaryColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 8,
              ),
              child: Stack(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: controller,
                          enabled: false,
                          style: TextStyle(color: AppColors.black),
                          decoration: const InputDecoration(
                            hintText: 'Select a date',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.edit_calendar,
                        color: AppColors.primaryColor,
                      ),
                      const SizedBox(width: 10),
                    ],
                  ),
                ],
              ),
            )),
      ),
    );
  }

  titleText(title) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 10, left: 25),
      child: Text(
        title,
        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
      ),
    );
  }

  infoText(title) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 10, left: 25),
      child: Text(
        title,
        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
      ),
    );
  }

  @override
  void dispose() {
    _fromDateController.dispose();
    _toDateController.dispose();
    _reasonController.dispose();
    dateCountController.dispose();
    super.dispose();
  }

  dateCountWidget() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Card(
          elevation: 2,
          surfaceTintColor: AppColors.primaryColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 8,
            ),
            child: Stack(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: dateCountController,
                        enabled: false,
                        style: TextStyle(color: AppColors.black),
                        decoration: const InputDecoration(
                          hintText: 'Date Count',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
