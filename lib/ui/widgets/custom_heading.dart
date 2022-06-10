import 'package:flutter/material.dart';
import '../../../shared/theme.dart';

class CustomHeading extends StatelessWidget {
  final String heading;
  final String subheading;
  final bool toggleSubheading;


  const CustomHeading({
    Key? key,
    required this.heading,
    this.subheading = 'insert subheading',
    this.toggleSubheading = true
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget subhead(){
      if (toggleSubheading){
        return Text(
          subheading,
          style: greyTextStyle.copyWith(
              fontSize: 16,
              fontWeight: light
          ),
        );
      }else{
        return SizedBox(
          height: 10,
        );
      }
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          heading,
          style: blackTextStyle.copyWith(
              fontSize: 24,
              fontWeight: semibold
          ),
        ),
        SizedBox(
          height: 6,
        ),
        subhead(),
      ],
    );
  }
}
