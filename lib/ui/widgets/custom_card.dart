import 'package:flutter/material.dart';
import 'package:good_eats/ui/pages/detail_resto_page.dart';
import '../../shared/theme.dart';

class CustomCard extends StatelessWidget {
  final String thumbnail;
  final String title;
  final String caption;
  final String rating;

  const CustomCard({
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
                builder: (context) => DetailRestoPage(),
            )
        );
      },
      child: Container(
        // card shape
        width: 200,
        height: 323,
        margin: EdgeInsets.only(left: defaultMargin),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: kWhiteColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // card picture
            Container(
              width: 180,
              height: 220,
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  image: DecorationImage(
                    image: AssetImage(thumbnail),
                    fit: BoxFit.cover,
                  )
              ),
              // Rating
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  height: 34,
                  width: 62,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    // borderRadius: BorderRadius.only(bottomLeft: Radius.circular(18)),
                    borderRadius: BorderRadius.circular(20) ,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        margin: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('icon_Star.png')
                            )
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        rating,
                        style: blackTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: medium
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            // card title
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 170,
                      child: Text(
                        title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        softWrap: false,
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: medium,
                        ),
                      ),
                    ),
                    Text(
                      caption,
                      style: greyTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: light,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
