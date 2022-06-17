import 'package:flutter/material.dart';
import 'package:ternaku/pages/components/text_field_container.dart';

class RoundedPassField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final String hintText;
  const RoundedPassField({
    Key? key,
    required this.onChanged,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        child: TextField(
      onChanged: onChanged,
      obscureText: true,
      decoration: InputDecoration(
          // icon: Icon(
          //   Icons.lock,
          //   color: kPrimaryColor,
          // ),
          border: InputBorder.none,
          hintText: hintText,
          suffixIcon: Icon(Icons.visibility)),
    ));
  }
}
