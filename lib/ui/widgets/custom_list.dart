import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:good_eats/ui/pages/detail_food_page.dart';
import '../../shared/theme.dart';

class CustomList extends StatelessWidget {
  final String thumbnail;
  final String title;
  final String caption;
  final String rating;

  const CustomList({
    Key? key,
    this.thumbnail = 'not_found.gif',
    required this.title,
    required this.caption,
    this.rating = '0',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailFoodPage(),
            )
        );
      },
      child: Container(
        // card list background
        height: 90,
        margin: EdgeInsets.only(top: 16),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(18)
        ),
        // card list content
        child: Row(
          children: [
            Container(
              width: 70,
              height: 70,
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                image: DecorationImage(
                  image: AssetImage(thumbnail),
                  fit: BoxFit.cover,
                )
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 6,
                  ),
                  // title
                  Container(
                    width: 160,
                    child: Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                      style: blackTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: medium
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Container(
                    width: 160,
                    child: Text(
                      caption,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                      style: greyTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: light
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  width: 20,
                  height: 20,
                  margin: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('icon_Star.png')
                    )
                  ),
                ),
                Text(
                  rating,
                  style: blackTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 6,
            )
          ],
        ),
      ),
    );
  }
}
