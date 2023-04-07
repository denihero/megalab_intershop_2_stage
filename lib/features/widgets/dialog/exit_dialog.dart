import 'package:flutter/services.dart';
import 'package:megacom_second_stage/core/megalab_internship.dart';

class ExitDialog extends StatelessWidget {
  const ExitDialog({Key? key, required this.onPressed}) : super(key: key);

  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
      ),
      title: const Text("Предупреждение "),
      content: const Text("Вы точно хотите выйти ?"),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text("Нет"),
        ),
        TextButton(
          onPressed:onPressed,
          child: const Text("Да"),
        ),
      ],
    );
  }
}
