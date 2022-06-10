import 'package:flutter/material.dart';
import 'package:good_eats/ui/widgets/custom_button.dart';
import '../../shared/theme.dart';

class CustomOrderNav extends StatelessWidget {
  const CustomOrderNav({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      color: kBgColor,
      margin: EdgeInsets.only(left: 0, right: 0, bottom: 0),
      padding: EdgeInsets.only(left: 24, right: 24,bottom: 18, top: 18),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'IDR 54.000,00',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
                Text(
                  'Per Porsi',
                  style: greyTextStyle.copyWith(
                    fontWeight: light,
                  ),
                ),
              ],
            ),
          ),
          CustomButton(
              title: 'Order',
              width: 170,
              height: 64,
              pressed: (){
                Navigator.pushNamed(context, '/success');
              },
          ),
        ],
      ),
    );
  }
}

