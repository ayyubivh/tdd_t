import 'package:flutter/material.dart';

class MyCheckbox extends StatefulWidget {
  final ValueNotifier<bool> notifier;

  const MyCheckbox({super.key, required this.notifier});

  @override
  MyCheckboxState createState() => MyCheckboxState();
}

class MyCheckboxState extends State<MyCheckbox> {
  @override
  void initState() {
    super.initState();
    widget.notifier.addListener(_onValueChanged);
  }

  @override
  void dispose() {
    widget.notifier.removeListener(_onValueChanged);
    super.dispose();
  }

  void _onValueChanged() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.notifier.value = !widget.notifier.value;
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Icon(
          widget.notifier.value
              ? Icons.check_box
              : Icons.check_box_outline_blank,
          size: 27,
          color: widget.notifier.value ? Colors.purple : Colors.grey,
        ),
      ),
    );
  }
}
