import 'package:flutter/material.dart';

class TextForm extends StatelessWidget {
  TextForm({Key? key, this.lableText, this.myKey, required this.obscureText,
  this.icon, this.controller, this.validation, this.press, this.hint}) : super(key: key);

  final String ?lableText;
  final TextInputType ?myKey;
  late final bool obscureText;
  final IconData ?icon;
  final TextEditingController ?controller;
  final Function ?validation;
  final Function ?press;
  final String ?hint;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: myKey,
      validator: validation as String ? Function(String?),
      onChanged: press as void  Function(String?),
      controller: controller,
      obscureText: obscureText,
      style: const TextStyle(
        fontSize: 20,
        color: Color(0xFFFDFDFD)
      ),
      decoration: InputDecoration(
        hintText: hint,
        labelText: lableText,
        labelStyle: const TextStyle(
          fontSize: 18,
          color: Color(0xFFFFFFFF),

        ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              width: 3,
              color: Color(0xA134E0C1)
            )
          ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(
            width: 2,
            color: Color(0xA128B299),
        )
    ),
        suffixIcon: Icon(icon,color: Color(0x99FFFFFF),
        ),
      ),
    );
  }
}
