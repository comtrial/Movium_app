import 'package:flutter/material.dart';
import 'package:flutter_application_2/model/constant.dart';
import 'package:meta/meta.dart';

class CustomAppBar extends StatelessWidget {
  Widget _logo() {
    return Container(
      width: 130,
      child: Image.asset("assets/images/Movium.png", fit: BoxFit.fill),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          _logo(),
        ],
      ),
    );
  }
}
