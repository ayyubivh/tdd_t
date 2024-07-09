import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/mash/data/remote/request/update_profile_request.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/widgets/buttons/animted_button.dart';
import '../../manager/bloc/profile_bloc/profile_bloc.dart';

class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({super.key});

  final _formKey = GlobalKey<FormState>();

  final TextEditingController _studentIdController = TextEditingController();
  final TextEditingController _primaryNumController = TextEditingController();
  final TextEditingController _primaryMailController = TextEditingController();
  final TextEditingController _fatherNumController = TextEditingController();
  final TextEditingController _motherNumController = TextEditingController();
  final TextEditingController _fatherMailController = TextEditingController();
  final TextEditingController _motherMailController = TextEditingController();
  final TextEditingController _perAddressController = TextEditingController();
  final TextEditingController _prfPhotoController = TextEditingController();

  final TextEditingController _bloodGroupController = TextEditingController();

  final List<String> _bloodGroups = [
    'A+',
    'A-',
    'B+',
    'B-',
    'AB+',
    'AB-',
    'O+',
    'O-'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Profile"),
      ),
      body: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          _studentIdController.text =
              state.getUserDetail?.data?.studentId ?? "";
          _primaryNumController.text = state.getUserDetail?.data?.mobile ?? "";
          _primaryMailController.text = state.getUserDetail?.data?.email ?? "";
          _fatherNumController.text =
              state.getUserDetail?.data?.fatherMobile ?? "";
          _motherNumController.text =
              state.getUserDetail?.data?.motherMobile ?? "";
          _fatherMailController.text =
              state.getUserDetail?.data?.fatherEmail ?? "";
          _motherMailController.text =
              state.getUserDetail?.data?.motherEmail ?? "";
          _perAddressController.text =
              state.getUserDetail?.data?.perAddress1 ?? "";
          _prfPhotoController.text =
              state.getUserDetail?.data?.profilePhoto ?? "";
          _bloodGroupController.text =
              state.getUserDetail?.data?.bloodGroup ?? "";

          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _buildTextFormField(
                        "Phone Number", _primaryNumController, true,
                        validator: _validatePhoneNumber),
                    _buildTextFormField("Email", _primaryMailController, true,
                        validator: _validateEmail),
                    _buildTextFormField(
                        "Father's Number", _fatherNumController, true,
                        validator: _validatePhoneNumber),
                    _buildTextFormField(
                        "Mother's Number", _motherNumController, true,
                        validator: _validatePhoneNumber),
                    _buildTextFormField(
                        "Father's Email", _fatherMailController, true,
                        validator: _validateEmail),
                    _buildTextFormField(
                        "Mother's Email", _motherMailController, true,
                        validator: _validateEmail),
                    _buildTextFormField(
                        "Permanent Address", _perAddressController, true),
                    _buildDropdownFormField(
                        "Blood Group", _bloodGroupController),
                    const SizedBox(height: 20),
                    AnimatedSharedButton(
                      isLoading: false,
                      title: Text(
                        'Save',
                        style: TextStyle(color: AppColors.white),
                      ),
                      onTap: () {
                        if (_formKey.currentState?.validate() ?? false) {
                          final userInfo = context
                              .read<ProfileBloc>()
                              .state
                              .getUserDetail
                              ?.data;
                          BlocProvider.of<ProfileBloc>(context)
                              .add(ProfileEvent.updateProfile(
                                  request: UpdateProfileRequest(
                            compId: userInfo?.compId,
                            studentId: userInfo?.usrId,
                            primaryNum: _primaryNumController.text,
                            primaryMail: _primaryMailController.text,
                            fatherNum: _fatherNumController.text,
                            motherNum: _motherNumController.text,
                            fatherMail: _fatherMailController.text,
                            motherMail: _motherMailController.text,
                            perAddress: _perAddressController.text,
                            prfPhoto: null,
                            tabId: '1',
                            editedBy: '2',
                            bloodGroup: _bloodGroupController.text,
                          )));
                          context.pop();
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildTextFormField(
      String label, TextEditingController controller, bool enabled,
      {String? Function(String?)? validator}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
          spacer10,
          TextFormField(
            controller: controller,
            decoration: InputDecoration(
              labelText: label,
              border: const OutlineInputBorder(),
            ),
            enabled: enabled,
            validator: validator,
          ),
        ],
      ),
    );
  }

  Widget _buildDropdownFormField(
      String label, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
          spacer10,
          DropdownButtonFormField<String>(
            value: controller.text.isNotEmpty ? controller.text : null,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
            items: _bloodGroups.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (newValue) {
              controller.text = newValue!;
            },
          ),
        ],
      ),
    );
  }

  String? _validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'This field is required';
    }
    if (!RegExp(r'^\d{10}$').hasMatch(value)) {
      return 'Enter a valid 10-digit phone number';
    }
    return null;
  }

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'This field is required';
    }
    if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
      return 'Enter a valid email address';
    }
    return null;
  }
}
