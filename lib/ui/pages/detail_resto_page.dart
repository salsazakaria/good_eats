import 'package:flutter/material.dart';
import 'package:good_eats/ui/widgets/custom_checked_item.dart';
import 'package:good_eats/ui/widgets/custom_list.dart';
import '../../shared/theme.dart';

class DetailRestoPage extends StatelessWidget {

  const DetailRestoPage({
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
                image: AssetImage('c_banner2.png')
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
      margin: EdgeInsets.only(top: 310, left: 24, right: 24, bottom: 24),
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
                      'McDonald BSD',
                      style: whiteTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: semibold,
                      ),
                    ),
                    Text(
                      'Bumi Serpong Damai',
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
                  'Tentang',
                  style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semibold
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  'McDonald’s merupakan restoran fast food terbesar di dunia yang diawali pada tahun 1955 di California, Amerika Serikat. Dengan produk unggulan berupa Burger bernama Bigmac.',
                  style: blackTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: regular,
                    height: 2,
                  ),
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
                    CustomCheckedItem(item_text : 'Star Restaurant'),
                    CustomCheckedItem(item_text : 'Buka 24 Jam'),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    CustomCheckedItem(item_text : 'Free parkir'),
                    CustomCheckedItem(item_text : 'Higienis'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  Widget listMenu(){
    return Container(
      margin: EdgeInsets.only(left: 24,right: 24, bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Menu',
            style: blackTextStyle.copyWith(
              fontWeight: semibold,
              fontSize: 18,
            ),
          ),
          CustomList(thumbnail: 'c_menu1.png',title: 'French Fries', caption: 'IDR 54.000,00', rating: '4,8',),
          CustomList(thumbnail: 'c_menu2.png',title: 'Big Mac', caption: 'IDR 49.000,00', rating: '4,7',),
          CustomList(thumbnail: 'c_menu3.png',title: 'Mc Chicken', caption: 'IDR 73.000,00', rating: '4,9',),
        ],
      ),
    );
  }
  Widget fullContent(){
    return Column(
      children: [
        detailContent(),
        listMenu(),
      ],
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
              fullContent(),

            ],
          ),
        ),
      );
  }
}
