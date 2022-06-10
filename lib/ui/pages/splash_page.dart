import 'package:flutter/material.dart';
import '../../../shared/theme.dart';
import 'dart:async';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    // TODO: implement initState
    Timer(
      Duration(seconds: 3),
      (){
        Navigator.pushNamed(context, '/get-started');
        }
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBrandColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Good Eats',
              style: whiteTextStyle.copyWith(
                fontSize: 32,
                fontWeight: bold,
            ),),
          ],
        ),
      ),
    );
  }
}
