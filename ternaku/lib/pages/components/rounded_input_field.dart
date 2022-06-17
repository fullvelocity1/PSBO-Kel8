import 'package:flutter/material.dart';
import 'package:ternaku/constants.dart';
import 'package:ternaku/pages/components/text_field_container.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key? key,
    required this.hintText,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
            hintText: hintText,
            border: InputBorder.none,
            fillColor: TextFieldColor),
      ),
    );
  }
}
