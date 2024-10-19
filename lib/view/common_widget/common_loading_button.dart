import 'package:flutter/material.dart';

class CommonLoadingButton extends StatelessWidget {
  const CommonLoadingButton({
    super.key,
    this.buttonWidth,
    this.buttonHeight,
    this.buttonColor,
  });

  final double? buttonWidth;
  final double? buttonHeight;
  final Color? buttonColor;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: buttonColor ?? const Color(0xffc873a9),
      child: SizedBox(
        height: buttonHeight ?? 50,
        width: buttonWidth ?? MediaQuery.sizeOf(context).width,
        child: const Center(
          child: CircularProgressIndicator(
            backgroundColor:Color(0xffc873a9),
            color:Color(0xffFFFFFF),
          ),
        ),
      ),
    );
  }
}
