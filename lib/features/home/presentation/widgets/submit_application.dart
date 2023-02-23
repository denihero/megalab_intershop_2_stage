import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:megacom_second_stage/core/color.dart';
import 'package:megacom_second_stage/core/string.dart';
import 'package:megacom_second_stage/core/style.dart';

import 'custom_text_form_field.dart';

class SubmitApplication extends StatefulWidget {
  const SubmitApplication({Key? key}) : super(key: key);

  @override
  State<SubmitApplication> createState() => _SubmitApplicationState();
}

class _SubmitApplicationState extends State<SubmitApplication> {

  late final TextEditingController _nameController;
  late final TextEditingController _phoneController;
  late final TextEditingController _messageController;

  @override
  void initState() {
    _nameController = TextEditingController();
    _phoneController = TextEditingController();
    _messageController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Text(
              AppString.haveQuestion,
              style: Style.montserrat_16_700Black,
            ),
            const SizedBox(
              height: 30,
            ),
            CustomTextFormField(
              hintText: 'Имя',
              controller: _nameController,
              textInputType: TextInputType.name,
            ),
            const SizedBox(
              height: 15,
            ),
            CustomTextFormField(
                hintText: 'Телефон',
                controller: _phoneController,
                textInputType: TextInputType.phone),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
                height: 200,
                child: CustomTextFormField(
                  hintText: 'Сообщение',
                  controller: _messageController,
                  textInputType: TextInputType.text,
                  maxLines: 7,
                )),
            SizedBox(
              height: 60,
              width: 300,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  )),
                  onPressed: () {},
                  child: Text(
                    'оставить заявку',
                    style: Style.inter_14_900White,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
