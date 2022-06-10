import 'package:flutter/material.dart';
import 'package:good_eats/ui/widgets/custom_button.dart';
import '../../../shared/theme.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('a_splash.png'),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Booking Restoran',
                  style: whiteTextStyle.copyWith(
                    fontSize: 32,
                    fontWeight: semibold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Kamu laper tapi mager?\nbiar kami yang anter! gratis!',
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: light,
                  ),
                  textAlign: TextAlign.center,
                ),
                CustomButton(
                  title: 'Mulai',
                  width: 220,
                  pressed: (){
                    Navigator.pushNamed(context, '/sign-up');
                  },
                  margin: EdgeInsets.only(top: 50, bottom: 80),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
