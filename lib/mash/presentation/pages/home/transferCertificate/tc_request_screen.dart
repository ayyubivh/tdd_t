import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/mash/presentation/manager/bloc/profile_bloc/profile_bloc.dart';
import 'package:mash/mash/presentation/manager/bloc/tc_bloc/tc_bloc.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/helper_classes.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';
import 'package:mash/mash/presentation/utils/size_utility.dart';
import 'package:mash/mash/presentation/widgets/buttons/animted_button.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';

import '../../../widgets/drawer_widget.dart';

class TransferRequestScreen extends StatefulWidget {
  const TransferRequestScreen({super.key});

  @override
  State<TransferRequestScreen> createState() => _TransferRequestScreenState();
}

class _TransferRequestScreenState extends State<TransferRequestScreen> {
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _optionController = TextEditingController();

  final ValueNotifier<DateTime> _selectedDate = ValueNotifier(DateTime.now());
  final ValueNotifier<String> _reasonId = ValueNotifier('');

  @override
  void initState() {
    BlocProvider.of<TcBloc>(context).add(const TcEvent.getTcReason());
    super.initState();
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate.value,
      firstDate: DateTime(1900),
      lastDate: DateTime(2050),
    );
    if (picked != null && picked != _selectedDate.value) {
      _selectedDate.value = picked;
      _dateController.text = "${picked.toLocal()}".split(' ')[0];
    }
  }

  void _openOptionsBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (BuildContext builder) {
        return BlocBuilder<TcBloc, TcState>(
          builder: (context, state) => Container(
            height: SizeUtility(context).height / 2.2,
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 40,
                  height: 5,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(2.5),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Select Reason',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: ListView.separated(
                    separatorBuilder: (context, index) =>
                        const Divider(height: 1),
                    itemCount: state.tcReasonResponse.data?.length ?? 0,
                    itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        _optionController.text =
                            state.tcReasonResponse.data?[index].reason ?? '';
                        _reasonId.value =
                            state.tcReasonResponse.data?[index].reasonId ?? '';
                        Navigator.of(context).pop();
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 12,
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.check_circle_outline,
                                color: Colors.grey[400]),
                            const SizedBox(width: 15),
                            Expanded(
                              child: Text(
                                state.tcReasonResponse.data?[index].reason ??
                                    '',
                                style: const TextStyle(fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _applyTC(BuildContext context) {
    final studentId =
        context.read<ProfileBloc>().state.getUserDetail?.data?.studentId;
    if (_dateController.text.isNotEmpty &&
        _reasonId.value.isNotEmpty &&
        studentId != null) {
      BlocProvider.of<TcBloc>(context).add(TcEvent.applyTc(
        studentId: studentId,
        reaseonId: _reasonId.value,
        expectedDate: _dateController.text,
      ));
      context.pop();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please fill in all the fields')),
      );
    }
  }

  @override
  void dispose() {
    _dateController.dispose();
    _optionController.dispose();
    _selectedDate.dispose();
    _reasonId.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: 'TC REQUEST'),
      endDrawer: const DrawerWidget(),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _titles('Student Name'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: HelperClasses.getSelectedStudent(context, true),
          ),
          _titles('Expected Date'),
          _dateSelection(),
          _titles('Reason for Applying TC'),
          _selectReason(),
          spacer30,
          _applyButton()
        ],
      ),
    );
  }

  Widget _titles(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Text(
        title,
        style: TextStyle(
          fontSize: SizeConfig.textSize(17),
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _dateSelection() {
    return GestureDetector(
      onTap: () => _selectDate(context),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Card(
          elevation: 2,
          surfaceTintColor: AppColors.primaryColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: _dateController,
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
          ),
        ),
      ),
    );
  }

  Widget _selectReason() {
    return GestureDetector(
      onTap: () => _openOptionsBottomSheet(context),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Card(
          elevation: 2,
          surfaceTintColor: AppColors.primaryColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: _optionController,
                    enabled: false,
                    style: TextStyle(color: AppColors.black),
                    decoration: const InputDecoration(
                      hintText: 'Select a reason to apply',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Icon(
                  Icons.arrow_drop_down_circle,
                  color: AppColors.primaryColor,
                ),
                const SizedBox(width: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _applyButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60.0),
      child: AnimatedSharedButton(
        onTap: () => _applyTC(context),
        title: Text(
          'APPLY',
          style: TextStyle(
            color: AppColors.white,
            fontWeight: FontWeight.w600,
            fontSize: SizeConfig.textSize(18),
          ),
        ),
        isLoading: false,
      ),
    );
  }
}
