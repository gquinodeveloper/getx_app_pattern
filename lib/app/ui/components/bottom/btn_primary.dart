import 'package:flutter/material.dart';

class BtnPrimary extends StatelessWidget {
  const BtnPrimary({Key? key,
  required this.text,
  required this.onTap,
  }) : super(key: key);

  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 60.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          gradient: const LinearGradient(
            colors: [
              Colors.blue,
              Colors.cyan,
            ],
          ),
        ),
        child:  Text(
          text,
          style: const TextStyle(
            fontSize: 20.0,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
