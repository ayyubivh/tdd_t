import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';

class ScheduleItem extends StatelessWidget {
  const ScheduleItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      height: MediaQuery.of(context).size.height * 0.2,
      child: Row(
        children: [
          Column(
            children: [
              //CIRCLE CONTAINER
              spacer20,
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.green,
                ),
                child: Center(
                  child: Icon(
                    Icons.done,
                    size: 15,
                    color: AppColors.white,
                  ),
                ),
              ),

              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(top: 10),
                  // height: MediaQuery.of(context).size.height *0.09,
                  width: 4,
                  decoration: BoxDecoration(color: AppColors.green),
                ),
              ),
              spacer10
            ],
          ),
          Expanded(
            child: Container(
                margin: const EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                    color: AppColors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: const Offset(0, 0))
                    ],
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "CLASS X11 D",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: AppColors.headText),
                          ),
                          GestureDetector(
                            behavior: HitTestBehavior.translucent,
                            onTap: () {
                              context.pushNamed(AppPages.addNotScreen);
                            },
                            child: Row(
                              children: [
                                Text(
                                  AppStrings.addNote,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.primaryColor,
                                  ),
                                ),
                                spacerWidth4,
                                Icon(
                                  Icons.add,
                                  size: 16,
                                  color: AppColors.primaryColor,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Text(
                        "Social Science",
                        style:
                            TextStyle(fontSize: 12, color: AppColors.headText),
                      ),
                      Text(
                        "08:00 am - 09:00 am",
                        style:
                            TextStyle(fontSize: 12, color: AppColors.headText),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 6.5,
                        ),
                        decoration: BoxDecoration(
                            color: AppColors.grey200,
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          "Completed",
                          style: TextStyle(
                            color: AppColors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                )),
          )
        ],
      ),
    );
  }
}
