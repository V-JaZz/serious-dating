import 'package:flutter/material.dart';

import '../utils/helper.dart';

// ignore: must_be_immutable
class SignInBtnWithBorder extends StatelessWidget {
  SignInBtnWithBorder({
    super.key,
    required this.onTap,
    this.btnColor,
    this.titleColor,
    this.borderColor,
    required this.title,
  });

  void Function()? onTap;
  Color? btnColor = Colors.black;
  Color? titleColor = Colors.black;
  Color? borderColor = Colors.black;
  String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: UiHelper.getSize(context).width / 1.2,
        height: 50,
        decoration: BoxDecoration(
          color: btnColor,
          border: Border.all(
            color: borderColor!,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
                fontSize: 16, color: titleColor, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
