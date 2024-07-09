import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:line_icons/line_icons.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';

import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/enums.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';

import '../../manager/bloc/profile_bloc/profile_bloc.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: "Profile"),
      body: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          return ListView(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            children: [
              const SizedBox(height: 20),
              Center(
                child: ProfileImage(
                    url: state.getUserDetail?.data?.profilePhoto ?? ""),
              ),
              const SizedBox(height: 30),
              ProfileText(
                text: state.getUserDetail?.data?.studentName ?? "",
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(height: 5),
              ProfileText(
                text:
                    'ADM NO : ${state.getUserDetail?.data?.admissionNo ?? ""}',
                fontSize: 12,
                fontWeight: FontWeight.w300,
              ),
              const SizedBox(height: 40),
              BasicDetails(
                title: "Basic Details",
                value: [
                  ProfileRow(
                      iconData: Icons.person,
                      leftText: 'User ID',
                      rightText: state.getUserDetail?.data?.usrId ?? ""),
                  ProfileRow(
                      iconData: Icons.email,
                      leftText: 'Email',
                      rightText: state.getUserDetail?.data?.email ?? ""),
                  ProfileRow(
                      iconData: Icons.phone,
                      leftText: 'Phone',
                      rightText: state.getUserDetail?.data?.mobile ?? ""),
                  ProfileRow(
                      iconData: Icons.date_range,
                      leftText: 'Date of Birth',
                      rightText: state.getUserDetail?.data?.dob ?? ""),
                  ProfileRow(
                      iconData: Icons.bloodtype,
                      leftText: 'Blood Group',
                      rightText: state.getUserDetail?.data?.bloodGroup ?? ''),
                ],
                showEditButton: true,
                userType: state.selectedSibling == null ? true : false,
              ),
              spacer30,
              BasicDetails(
                title: "Personal Information",
                value: [
                  ProfileRow(
                      iconData: Icons.family_restroom,
                      leftText: 'Father Name',
                      rightText: state.getUserDetail?.data?.fatherName ?? ""),
                  ProfileRow(
                      iconData: Icons.family_restroom,
                      leftText: 'Mother Name',
                      rightText: state.getUserDetail?.data?.motherName ?? ""),
                  ProfileRow(
                      iconData: Icons.phone_android,
                      leftText: 'Mother Contact No.',
                      rightText: state.getUserDetail?.data?.motherMobile ?? ""),
                  ProfileRow(
                      iconData: Icons.phone_android,
                      leftText: 'Father Contact',
                      rightText: state.getUserDetail?.data?.fatherMobile ?? ""),
                ],
                showEditButton: false,
              ),
              AddressCard(
                  address: state.getUserDetail?.data?.perAddress1 ?? ""),
            ],
          );
        },
      ),
    );
  }
}

class ProfileImage extends StatelessWidget {
  final String url;
  const ProfileImage({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white, width: 1),
      ),
      child: CircleAvatar(
        radius: 60,
        backgroundImage: CachedNetworkImageProvider(url),
      ),
    );
  }
}

class ProfileText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  const ProfileText({
    super.key,
    required this.text,
    required this.fontSize,
    required this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontSize, fontWeight: fontWeight, color: Colors.black),
      textAlign: TextAlign.center,
    );
  }
}

class BasicDetails extends StatelessWidget {
  final String title;
  final List<Widget> value;
  final bool showEditButton;
  final bool? userType;
  const BasicDetails({
    super.key,
    required this.title,
    required this.value,
    required this.showEditButton,
    this.userType,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              if (showEditButton && userType == false)
                TextButton(
                  onPressed: () {
                    context.pushNamed(AppPages.editProfile);
                  },
                  child: const Row(
                    children: [
                      Text("Edit", style: TextStyle(fontSize: 16)),
                      SizedBox(width: 2),
                      Icon(LineIcons.penNib),
                    ],
                  ),
                )
            ],
          ),
          const SizedBox(height: 5),
          Card(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
              child: Column(children: value),
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileRow extends StatelessWidget {
  final IconData iconData;
  final String leftText;
  final String rightText;
  const ProfileRow({
    super.key,
    required this.iconData,
    required this.leftText,
    required this.rightText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(iconData, color: Colors.black),
              const SizedBox(width: 10),
              Text(leftText, style: const TextStyle(fontSize: 14)),
            ],
          ),
          Expanded(
            flex: 3,
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                rightText,
                textAlign: TextAlign.right,
                style: const TextStyle(
                  letterSpacing: 1,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                overflow: TextOverflow.clip,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AddressCard extends StatelessWidget {
  final String address;
  const AddressCard({super.key, required this.address});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Colors.white,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              ProfileRow(
                  iconData: Icons.place,
                  leftText: 'Address',
                  rightText: address),
              const SizedBox(height: 5),
            ],
          ),
        ),
      ),
    );
  }
}
