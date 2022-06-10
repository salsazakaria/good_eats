import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class CustomThumbnailSm extends StatelessWidget {
  final String photo;

  const CustomThumbnailSm({
    Key? key,
    this.photo = 'not_found',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      margin: EdgeInsets.only(right: 16, top: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          image: DecorationImage(
              image: AssetImage(photo)
          )
      ),
    );
  }
}
