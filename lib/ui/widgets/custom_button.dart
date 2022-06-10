import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final Function() pressed;
  final EdgeInsets margin;

  const CustomButton({
    Key? key,
    this.title='customText',
    this.width=double.infinity,
    this.height = 64,
    required this.pressed,
    this.margin = EdgeInsets.zero
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      child: TextButton(
        onPressed: pressed,
        style: TextButton.styleFrom(
          backgroundColor: kBrandColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(defaultRadius)
          ),
        ),
        child: Text(
          title,
          style: whiteTextStyle.copyWith(
            fontSize: 18,
            fontWeight: regular,
          ),
        ),
      ),
    );
  }
}
