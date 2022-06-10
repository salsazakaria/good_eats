import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class CustomCheckedItem extends StatelessWidget {
  final String item_text;

  const CustomCheckedItem({
    Key? key,
    required this.item_text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Container(
            // margin: EdgeInsets.only(top: 10),
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('icon_check.png'),
              ),
            ),
          ),
          SizedBox(
            width: 6,
          ),
          Text(
            item_text,
            style: blackTextStyle,
          )
        ],
      ),
    );
  }
}
