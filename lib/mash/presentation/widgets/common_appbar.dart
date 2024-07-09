import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';

PreferredSize commonAppbar(
    {required String title,
    Function(String)? searchFunction,
    Function? onClose}) {
  return PreferredSize(
      preferredSize: const Size(double.infinity, 60),
      child: CustomAppBar(
        title: title,
        searchFunction: searchFunction,
        onClose: onClose,
      ));
}

class CustomAppBar extends StatefulWidget {
  final Function(String)? searchFunction;
  final String title;
  final Function? onClose;

  const CustomAppBar(
      {super.key, this.searchFunction, required this.title, this.onClose});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar>
    with TickerProviderStateMixin {
  late AnimationController _searchAnimation;
  late AnimationController _expandTextFieldAnimation;
  late Animation<double> _rotateIcon;
  late Animation<double> _sizeAnimation;
  late Animation<double> _sizeAnimationReverse;

  @override
  void initState() {
    _expandTextFieldAnimation = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    _searchAnimation = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    _rotateIcon = Tween<double>(begin: 0, end: -140).animate(_searchAnimation);

    _searchAnimation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        prettyPrint("---STATING SHRINKING");
        _expandTextFieldAnimation.forward();
      }
    });

    _expandTextFieldAnimation.addStatusListener((status) {
      if (status == AnimationStatus.reverse) {
        _searchAnimation.reverse();
      }
    });
    super.initState();
  }

  @override
  void didChangeDependencies() {
    SizeConfig().init(context);
    _sizeAnimation =
        Tween<double>(begin: MediaQuery.of(context).size.width, end: 0)
            .animate(_searchAnimation);
    _sizeAnimationReverse =
        Tween<double>(end: MediaQuery.of(context).size.width, begin: 0)
            .animate(_expandTextFieldAnimation);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return AnimatedBuilder(
      animation: _expandTextFieldAnimation,
      builder: (context, child) {
        return AnimatedBuilder(
            animation: _searchAnimation,
            builder: (context, child) {
              prettyPrint(
                  "${_searchAnimation.status == AnimationStatus.completed ? _expandTextFieldAnimation.value : _sizeAnimation.value}");
              return _sizeAnimation.value < width
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: _searchAnimation.status ==
                                  AnimationStatus.completed
                              ? _sizeAnimationReverse.value
                              : _sizeAnimation.value,
                          height: 60,
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: _expandTextFieldAnimation.status ==
                                  AnimationStatus.completed
                              ? null
                              : BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.white, // Inner color - white
                                      Colors.purple.withOpacity(
                                          0.5), // Outer color - purple
                                      Colors.white,
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(20)),
                          child: _searchAnimation.status ==
                                  AnimationStatus.completed
                              ? _sizeAnimationReverse.value > 100
                                  ? Row(
                                      children: [
                                        Expanded(
                                          child: TextField(
                                            onChanged:
                                                widget.searchFunction != null
                                                    ? (value) => widget
                                                        .searchFunction!(value)
                                                    : null,
                                            decoration: InputDecoration(
                                              hintText: "Search...",
                                              prefixIcon:
                                                  const Icon(LineIcons.search),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(
                                                    10.0), // Adjust corner radius
                                                borderSide: const BorderSide(
                                                    color: Colors.grey),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                borderSide: const BorderSide(
                                                    color: Colors.blue),
                                              ),
                                            ),
                                          ),
                                        ),
                                        IconButton(
                                          icon: const Icon(Icons.close),
                                          onPressed: () {
                                            if (widget.onClose != null) {
                                              widget.onClose!();
                                            }

                                            _expandTextFieldAnimation.reverse();
                                          },
                                        ),
                                      ],
                                    )
                                  : const SizedBox()
                              : const SizedBox(),
                        ),
                      ],
                    )
                  : AppBar(
                      backgroundColor: AppColors.white,
                      centerTitle: true,
                      title: Text(
                        widget.title,
                        style: TextStyle(
                          fontSize: SizeConfig.textSize(18),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      actions: [
                        if (widget.searchFunction != null)
                          IconButton(
                              onPressed: () => _animateIcon(),
                              icon: Transform.rotate(
                                  angle: _rotateIcon.value *
                                      (3.141592653589793 / 180),
                                  child: const Icon(LineIcons.search)))
                      ],
                    );
            });
      },
    );
  }

  _animateIcon() {
    if (_searchAnimation.status == AnimationStatus.completed) {
      _searchAnimation.reverse();
    } else {
      _searchAnimation.forward();
    }
  }
}
