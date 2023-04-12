import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:megacom_second_stage/core/megalab_internship.dart';
import 'package:megacom_second_stage/features/widgets/dialog/application_dialog.dart';

import '../home/presentation/bloc/send_application/send_application_cubit.dart';
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
  late final MaskTextInputFormatter maskFormatter;

  late final FocusNode _messageFocus;
  bool isShowed = false;

  final validateKey = GlobalKey<FormState>();

  @override
  void initState() {
    _nameController = TextEditingController();
    _phoneController = TextEditingController();
    _messageController = TextEditingController();
    _messageFocus = FocusNode();
    maskFormatter = MaskTextInputFormatter(
      mask: '+996 (###) ##-##-##',
      filter: {"#": RegExp(r'[0-9]')},
    );
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
    return BlocConsumer<SendApplicationCubit, SendApplicationState>(
      listener: (context, state) {
        if (state is SendApplicationSuccess) {
          final status = state.status;
          if (status == true) {
            showDialog(
                barrierDismissible: false,
                context: context,
                builder: (context) {
                  return const ApplicationDialog();
                });
            _messageController.clear();
            _phoneController.clear();
            _nameController.clear();
            _messageFocus.unfocus();
          } else {
            return;
          }
        } else if (state is SendApplicationError) {
          ScaffoldMessenger.maybeOf(context)
              ?.showSnackBar(SnackBar(content: Text(state.message.toString())));
        } else if (state is SendApplicationLoading) {
          ScaffoldMessenger.maybeOf(context)
              ?.showSnackBar(const SnackBar(content: Text('Подождите...')));
        }
      },
      builder: (context, state) {
        return SizedBox(
          height: 500.h,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Form(
              key: validateKey,
              child: Column(
                children: [
                  Text(
                    AppString.haveQuestion,
                    style: Style.montserrat_16_700Black,
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  CustomTextFormField(
                    hintText: 'Имя',
                    controller: _nameController,
                    textInputType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                    isName: true,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  CustomTextFormField(
                    hintText: 'Телефон',
                    controller: _phoneController,
                    textInputType: TextInputType.phone,
                    textInputAction: TextInputAction.next,
                    inputFormatter: [maskFormatter],
                    isNumber: true,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  SizedBox(
                      height: 170.h,
                      child: CustomTextFormField(
                        hintText: 'Сообщение',
                        controller: _messageController,
                        textInputType: TextInputType.multiline,
                        textInputAction: TextInputAction.newline,
                        focusNode: _messageFocus,
                        maxLines: 7,
                        isText: true,
                      )),
                  SizedBox(
                    height: 20.h,
                  ),
                  SizedBox(
                    height: 55.h,
                    width: 290.w,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        )),
                        onPressed: () {
                          if (validateKey.currentState!.validate()) {
                            context
                                .read<SendApplicationCubit>()
                                .sendApplication(
                                    _nameController.text,
                                    _phoneController.text,
                                    _messageController.text);
                          } else {
                            return;
                          }
                        },
                        child: Text(
                          'оставить заявку',
                          style: Style.inter_14_900White,
                        )),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
