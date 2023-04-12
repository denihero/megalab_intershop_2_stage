import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {Key? key,
      required this.hintText,
      required this.controller,
      required this.textInputType,
      this.inputFormatter,
      this.maxLines = 1,
      required this.textInputAction,
      this.prefixText,
      this.focusNode, this.isText = false,this.isNumber = false, this.isName = false, this.maxLength = 100})
      : super(key: key);

  final String hintText;
  final TextEditingController controller;
  final TextInputType textInputType;
  final List<TextInputFormatter>? inputFormatter;
  final int? maxLines;
  final TextInputAction textInputAction;
  final String? prefixText;
  final FocusNode? focusNode;
  final bool isText;
  final bool isNumber;
  final bool isName;
  final int maxLength;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: textInputType,
      inputFormatters: inputFormatter,
      textInputAction: textInputAction,
      focusNode: focusNode,
      textCapitalization: TextCapitalization.sentences,
      validator: (value) {
        if(isNumber == true && value!.isEmpty){
          return 'Пожалуйста введите валидный номер';
        } else if(isName == true && value!.isEmpty){
          return 'Пожалуйста введите ваше имя';
        }else{
          return 'Пожалуйста введите текст';
        }
      },
      maxLength: isText ? maxLength : null,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,
        prefixText: prefixText,
        border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.all(Radius.circular(20))),
      ),
    );
  }
}
