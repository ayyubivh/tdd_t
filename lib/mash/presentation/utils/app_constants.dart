import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mash/core/response_classify.dart' as res;
import 'package:mash/mash/presentation/manager/bloc/auth_bloc/auth_bloc.dart';
import 'package:mash/mash/presentation/widgets/buttons/animted_button.dart';

import 'app_colors.dart';

class AppConstants {
  static const appName = "MASH";
  static const googleMapKey = 'AIzaSyC31l-Cu9WVeWEgnVHRCE_Ltp8jSURAgRw';
  static const trackerApiKey = 'pGq2dyLIMA8bN8iWCpH7';
}

//height
const spacer4 = SizedBox(
  height: 4,
);
const spacer7 = SizedBox(
  height: 7,
);
const spacer10 = SizedBox(
  height: 10,
);
const spacer15 = SizedBox(
  height: 15,
);

const spacer20 = SizedBox(
  height: 20,
);
const spacer26 = SizedBox(
  height: 26,
);

const spacer30 = SizedBox(
  height: 30,
);
const spacer40 = SizedBox(
  height: 40,
);
const spacer50 = SizedBox(
  height: 50,
);
const spacer60 = SizedBox(
  height: 60,
);
const spacer70 = SizedBox(
  height: 70,
);
const spacer80 = SizedBox(
  height: 80,
);
const spacer90 = SizedBox(
  height: 90,
);
const spacer100 = SizedBox(
  height: 100,
);
const spacer110 = SizedBox(
  height: 110,
);
const spacer120 = SizedBox(
  height: 120,
);

//width
const spacerWidth4 = SizedBox(
  width: 4,
);
const spacerWidth6 = SizedBox(
  width: 6,
);
const spacerWidth10 = SizedBox(
  width: 10,
);
const spacerWidth15 = SizedBox(
  width: 15,
);
const spacerWidth20 = SizedBox(
  width: 20,
);
const spacerWidth30 = SizedBox(
  width: 30,
);
const spacerWidth40 = SizedBox(
  width: 40,
);
const spacerWidth50 = SizedBox(
  width: 50,
);
const spacerWidth60 = SizedBox(
  width: 60,
);
const spacerWidth70 = SizedBox(
  width: 70,
);

handleUnAuthorizedError(BuildContext context) {
  showModalBottomSheet(
      isDismissible: false,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      )),
      context: context,
      builder: (context) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20),
            child: Wrap(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Text(
                    "Session Expired!",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5.0),
                  child: Text(
                    "Your Session has expired. Please login again.",
                    style: TextStyle(
                      fontSize: 15,
                      color: AppColors.black,
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: BlocConsumer<AuthBloc, AuthState>(
                    listener: (context, state) {},
                    builder: (ctx, state) {
                      return AnimatedSharedButton(
                        onTap: () {
                          AuthBloc.get(context)
                              .add(AuthEvent.signOut(context: context));
                        },
                        title: const Text(
                          "Login",
                          style: TextStyle(color: Colors.white),
                        ),
                        isLoading:
                            state.signOutResponse?.status == res.Status.LOADING,
                      );
                    },
                  ),
                )
              ],
            ),
          ));
}

handleError(BuildContext context, String error, Function action) {
  showModalBottomSheet(
      isDismissible: true,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      context: context,
      builder: (context) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Wrap(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Text(
                    "Something went wrong!",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5.0),
                  child: Text(
                    error,
                    style: TextStyle(
                      fontSize: 15,
                      color: AppColors.black,
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigator.pop(context);
                      action();
                    },
                    child: const Text("Close"),
                  ),
                )
              ],
            ),
          ));
}

primaryShadowContainer(
    {required Widget child,
    double marginHorizontal = 0.0,
    double marginVertical = 0.0}) {
  return Container(
    margin: EdgeInsets.symmetric(
        horizontal: marginHorizontal, vertical: marginVertical),
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.greyClr100,
        border: Border.all(color: AppColors.white),
        boxShadow: [
          BoxShadow(
            color: AppColors.primaryColor.withOpacity(0.4),
            offset: const Offset(2, 2),
            blurRadius: 4,
            spreadRadius: 1,
          ),
        ]),
    child: child,
  );
}
