
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class NoCartProductFoundWidget extends StatelessWidget {
  const NoCartProductFoundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: size.height / 6),
          Image.asset(
            'images/no_data.png',
            fit: BoxFit.fill,
            height: size.height / 3,
            width: size.width / 1.5,
          ),
          SizedBox(height: size.height / 20),

        ],
      ),
    );
  }
}
