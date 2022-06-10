import 'package:flutter/material.dart';
import 'package:good_eats/ui/widgets/custom_checked_item.dart';
import 'package:good_eats/ui/widgets/custom_thumbnail_sm.dart';
import '../../shared/theme.dart';

class DetailFoodContent extends StatelessWidget {

  const DetailFoodContent({
    Key? key,
  }) : super(key: key);

  Widget backgroundImage(){
    return Stack(
      children: [
        // NOTE : IMAGE
        Container(
          width: double.infinity,
          height: 450,
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('d_banner1.png')
            ),
          ),
        ),

        // NOTE : SHADOW OVERLAY
        Container(
          width: double.infinity,
          height: 214,
          margin: EdgeInsets.only(top: 236),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent.withOpacity(0.0),
                    Colors.black.withOpacity(0.95)
                  ]
              )
          ),
        ),
      ],
    );
  }
  Widget detailContent(){
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 310, left: 24, right: 24, bottom: 90),
      child: Column(
        children: [

          // NOTE : TITLE
          Container(
            height: 60,
            width: 327,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // NOTE : TITLE
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'French Fries',
                      style: whiteTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: semibold,
                      ),
                    ),
                    Text(
                      'Top Favorite Menu',
                      style: whiteTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: regular,
                      ),
                    ),
                  ],
                ),
                // NOTE : RATING
                Row(
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
                      '4.8',
                      style: whiteTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: medium,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),

          // NOTE : ABOUT
          Container(
            margin: EdgeInsets.only(top: 30, bottom: 30),
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 30),
            decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                // NOTE : DESCRIPTION
                Text(
                  'Deskripsi',
                  style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semibold
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  'Temanmu menawarimu satu kentang goreng emas panas dari McDonalds miliknya. Kamu berkata, "Tentu," dan kemudian hal berikutnya yang kamu tahu, Ya! kamu ketagihan',
                  style: blackTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: regular,
                    height: 2,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                // NOTE : PHOTO
                Text(
                  'Foto',
                  style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semibold
                  ),
                ),
                Row(
                  children: [
                    CustomThumbnailSm(photo: 'd_photo1.png'),
                    CustomThumbnailSm(photo: 'd_photo2.png'),
                    CustomThumbnailSm(photo: 'd_photo3.png'),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),

                // NOTE : SERVICE
                Text(
                  'Layanan',
                  style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semibold
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    CustomCheckedItem(item_text : 'Gratis Ongkir'),
                    CustomCheckedItem(item_text : 'Higienis'),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    CustomCheckedItem(item_text : 'Paket Hemat'),
                    CustomCheckedItem(item_text : 'Diskon (S&K)'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return

      Scaffold(
      backgroundColor: kBgColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            backgroundImage(),
            detailContent(),
          ],
        ),
      ),
    );
  }
}
