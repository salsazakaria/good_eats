import 'package:flutter/material.dart';
import 'package:good_eats/ui/widgets/custom_button.dart';
import '../../../shared/theme.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 171,
              height: 171,
              margin: EdgeInsets.only(bottom: 100),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('success.gif')
                )
              ),
            ),
            Text(
              'Order Sukses',
              style: blackTextStyle.copyWith(
                fontSize: 32,
                fontWeight: semibold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Pesanan Kamu Sedang Kami antar',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: light,
              ),
            ),
            CustomButton(
                pressed: (){
                  Navigator.pushNamed(context, '/home');
                },
              title: 'Kembali ke Beranda',
              width: 220,
              margin: EdgeInsets.only(top: 82,bottom: 140),
            )
          ],
        ),
      ),
    );
  }
}

