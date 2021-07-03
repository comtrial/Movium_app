import 'package:flutter/material.dart';
import 'package:flutter_application_2/model/constant.dart';
import 'package:meta/meta.dart';

class SwipeBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width_size = MediaQuery.of(context).size.width;
    var height_size = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Container(
        width: width_size,
        height: height_size * 0.1,
        color: mainBackground,
        child: Column(
          children: [
            SizedBox(
              height: height_size * 0.005,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Icon(
                  Icons.keyboard_arrow_up,
                  color: mainWhite,
                  size: 40,
                ),
                // decoration: BoxDecoration(
                //   image: DecorationImage(
                //       image: Image.network(
                //               'https://img1.daumcdn.net/thumb/R1280x0.fjpg/?fname=http://t1.daumcdn.net/brunch/service/user/1j7Y/image/pVsFi73pS3XCKTxQYInv9i2D4Uw.jpg')
                //           .image,
                //       fit: BoxFit.cover),
                // ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "다음 영상 재생",
                  style: TextStyle(color: mainWhite),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
