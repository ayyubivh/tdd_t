import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';

typedef BoolCallback = void Function(bool value);

class AnimatedSharedButton extends StatefulWidget {
  final Function onTap;
  final Widget title;
  final double? progress;
  final bool isLoading;
  final double? width;

  const AnimatedSharedButton({
    super.key,
    required this.onTap,
    required this.title,
    required this.isLoading,
    this.progress,
    this.width,
  });

  @override
  State<AnimatedSharedButton> createState() => _AnimatedSharedButtonState();
}

class _AnimatedSharedButtonState extends State<AnimatedSharedButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  late Animation<double> _colorSizeAnimation;

  double minSize = 0.15;
  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 600));

    _colorSizeAnimation =
        Tween<double>(begin: 1, end: minSize).animate(_animationController);

    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant AnimatedSharedButton oldWidget) {
    if (widget.isLoading != oldWidget.isLoading) {
      if (widget.isLoading) {
        _animationController.forward();
      } else {
        _animationController.reverse();
      }
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _animationController,
        builder: (context, child) {
          return GestureDetector(
            onTap: widget.isLoading == true ? null : () => widget.onTap(),
            child: Container(
                width: widget.width ?? MediaQuery.sizeOf(context).width,
                height: 50,
                decoration: const BoxDecoration(),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: FractionallySizedBox(
                        widthFactor: _colorSizeAnimation.value,
                        child: Container(
                          height: 50,
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            shape: _colorSizeAnimation.value == minSize
                                ? BoxShape.circle
                                : BoxShape.rectangle,
                            borderRadius: _colorSizeAnimation.value == minSize
                                ? null
                                : BorderRadius.circular(80),
                          ),
                          child: _colorSizeAnimation.value == minSize
                              ? Center(
                                  child: CircularProgressIndicator(
                                    color: AppColors.white,
                                    strokeCap: StrokeCap.round,
                                    strokeWidth: 2,
                                    value: widget.progress,
                                  ),
                                )
                              : const SizedBox(),
                        ),
                      ),
                    ),
                    if (_colorSizeAnimation.value > minSize)
                      Positioned.fill(
                          child: Align(
                        alignment: Alignment.center,
                        child: widget.title,
                      ))
                  ],
                )),
          );
        });
  }
}
