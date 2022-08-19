import 'package:e_commerce_app/utils/colors.dart';
import 'package:e_commerce_app/utils/textStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeScreen', style: heading1White),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'You are in homePage',
          style: plainText,
        ),
      ),
    );
  }
}
