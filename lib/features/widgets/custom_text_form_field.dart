import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({Key? key, required this.hintText, required this.controller, required this.textInputType, this.inputFormatter, this.maxLines = 1}) : super(key: key);

  final String hintText;
  final TextEditingController controller;
  final TextInputType textInputType;
  final List<TextInputFormatter>? inputFormatter;
  final int? maxLines;



  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: textInputType,
      inputFormatters: inputFormatter,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,
        border: const OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.black
            ),
            borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.black
            ),
            borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.black
            ),
            borderRadius: BorderRadius.all(Radius.circular(20))
        ),
      ),
    );
  }
}
