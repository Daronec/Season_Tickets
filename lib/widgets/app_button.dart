import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      label: const Text('Добавить абонемент'),
      icon: const Icon(
        Icons.add,
        color: Color.fromRGBO(240, 135, 134, 1),
      ),
      style: ElevatedButton.styleFrom(
        foregroundColor: const Color.fromRGBO(63, 74, 86, 1),
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
      ),
      onPressed: onTap,
    );
  }
}
