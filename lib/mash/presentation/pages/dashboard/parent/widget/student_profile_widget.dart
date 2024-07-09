import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/mash/domain/entities/profile/student_entity.dart';
import 'package:mash/mash/presentation/utils/app_assets.dart';
import 'package:mash/mash/presentation/utils/handle_error.dart';
import 'package:mash/mash/presentation/utils/helper_classes.dart';

import '../../../../manager/bloc/profile_bloc/profile_bloc.dart';
import '../../../../utils/app_colors.dart';
import '../../../../widgets/shimmers/custom_shimmer_widget.dart';

class StudentProfileWidget extends StatelessWidget {
  final bool? isOnList;
  final StudentEntity entity;
  final bool? dontPadd;

  final VoidCallback onTap;

  const StudentProfileWidget(
      {super.key,
      required this.onTap,
      this.isOnList,
      required this.entity,
      this.dontPadd = true});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileBloc, ProfileState>(
      buildWhen: (previous, current) {
        if (previous.selectedSibling != current.selectedSibling) {
          return true;
        } else if (previous.getSiblings?.status !=
            current.getSiblings?.status) {
          return true;
        }
        return false;
      },
      builder: (context, state) {
        return state.getSiblings?.status == Status.LOADING ||
                state.getSiblings?.status == Status.initial
            ? const CustomShimmerWidget(height: 60)
            : GestureDetector(
                onTap: onTap,
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                      horizontal: dontPadd == true ? 0 : 20),
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
                                flex: 3,
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 25,
                                      backgroundImage:
                                          entity.profilePhoto.isEmpty
                                              ? null
                                              : HelperClasses
                                                  .cachedNetworkImageProvider(
                                                  imageUrl: entity.profilePhoto,
                                                ),
                                    ),
                                    const SizedBox(width: 10),
                                    Flexible(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            entity.studentName,
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: AppColors.black,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          Text(
                                            entity.divisionName,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          if (state.getSiblings?.data?.isNotEmpty == true &&
                              state.getSiblings!.data!.length > 1)
                            // for (int i = 0;
                            //     i < (state.getSiblings?.data?.length ?? 0);
                            //     i++)
                            //   Positioned(
                            //     right: 10.0 * i,
                            //     top: 0,
                            //     bottom: 0,
                            //     child: _buildRoundedImage(),
                            //   ),

                            Positioned(
                              right:
                                  state.selectedSibling != entity ? 18 : 10.0,
                              top: 0,
                              bottom: 0,
                              child: state.selectedSibling != entity
                                  ? Icon(
                                      Icons.circle_outlined,
                                      color: AppColors.primaryColor,
                                      size: 20,
                                    )
                                  : Lottie.asset(
                                      AppAssets.tickLottie,
                                      repeat: false,
                                      width: 40,
                                      height: 40,
                                    ),
                            )
                        ],
                      ),
                    ),
                  ),
                ),
              );
      },
      listener: (BuildContext context, ProfileState state) {
        if (state.getSiblings?.status == Status.ERROR) {
          handleErrorUi(context: context, error: state.getSiblings?.error);
        }
      },
      listenWhen: (previous, current) =>
          previous.getSiblings?.status != current.getSiblings?.status,
    );
  }

  Widget _buildRoundedImage() {
    return ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
              border: Border.all(
                color: AppColors.white,
                width: 3,
              ),
              image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/student_dummy.png',
                  ))),
        ));
  }
}
