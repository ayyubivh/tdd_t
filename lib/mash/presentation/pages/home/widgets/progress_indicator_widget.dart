import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/enums.dart';

class ProgressIndicatorWidget extends StatefulWidget {
  final double initialValue;
  final ProgressIndicatorType progressIndicatorType;

  const ProgressIndicatorWidget(
      {super.key,
      required this.initialValue,
      required this.progressIndicatorType});

  @override
  State<ProgressIndicatorWidget> createState() =>
      _ProgressIndicatorWidgetState();
}

class _ProgressIndicatorWidgetState extends State<ProgressIndicatorWidget>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation initialAnimation;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    );
    initialAnimation = Tween<double>(begin: 0, end: widget.initialValue)
        .chain(CurveTween(curve: Curves.easeIn))
        .animate(controller);
    controller.forward();

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: controller,
        builder: (context, child) {
          return widget.progressIndicatorType == ProgressIndicatorType.circular
              ? CircularProgressIndicator(
                  value: initialAnimation.value,
                  color: AppColors.primaryColor,

                  backgroundColor: Colors.grey.withOpacity(0.4),
                  strokeWidth: 8,

                  // strokeAlign: BorderSide.strokeAlignInside,
                  strokeCap: StrokeCap.round,
                )
              : Container(
                  height: 20,
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: AppColors.primaryColor,
                        width: 0.1,
                      )
                      // boxShadow: [
                      //   BoxShadow(
                      //     color: Colors.grey.withOpacity(0.5),
                      //     spreadRadius: 1,
                      //     blurRadius: 2,
                      //     offset:
                      //         const Offset(0, 2), // changes position of shadow
                      //   ),
                      // ],
                      ),
                  child: LinearProgressIndicator(
                    borderRadius: BorderRadius.circular(30),
                    value: initialAnimation.value,
                    semanticsLabel: 'Linear progress indicator',
                    backgroundColor: Colors.grey.withOpacity(0.3),
                    valueColor: AlwaysStoppedAnimation<Color>(
                        AppColors.primaryColor.withOpacity(0.5)),
                  ),
                );
        });
  }
}
