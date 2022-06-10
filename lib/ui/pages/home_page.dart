import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:good_eats/ui/widgets/custom_card.dart';
import 'package:good_eats/ui/widgets/custom_heading.dart';
import 'package:good_eats/ui/widgets/custom_list.dart';
import '../../../shared/theme.dart';
import 'package:http/http.dart';

class HomePage extends StatelessWidget {

  /*
  Future<List<Resto>> restoFuture = getRestos();

  static Future<List<Resto>> getRestos() async {
    const url = 'https://gist.githubusercontent.com/LittleFireflies/e8c08f316217b5018b76b3e5463da34d/raw/bf145725d1d9af2635b71bd6d5d9dc0b79712157/local_restaurant.json';
    final response = await http.get(Uri.parse(url));

    final body = json.decode(response.body);
    return body.map<Resto>(User.fromJson).toList();
  }

   */

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget header(){
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 30
        ),
        child: Row(
          children: [
            Expanded(
              child: CustomHeading(heading: 'Hello,\nSalsa Zakaria',subheading: 'ingin makan apa?',)
            ),
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('b_profile_alternate.png')
                ),
              ),
            )
          ],
        ),
      );
    }
    Widget card(){
      return Container(
        margin: EdgeInsets.only(top: 30, right: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              // Cards
              CustomCard(thumbnail: 'b_favorite1.png', rating: '4,9' , title: 'McDonald TMB', caption: 'Tegal Mulyorejo'),
              CustomCard(thumbnail: 'b_favorite2.png', rating: '4,8' ,title: 'McDonald BSD', caption: 'Bumi Serpong Damai'),
              CustomCard(thumbnail: 'b_favorite3.png', rating: '4,6' ,title: 'McDonald Gebang', caption: 'Kejawan Gebang'),
              CustomCard(title: 'McDonald Kebon Jeruk', caption: 'Kebon Jeruk'),
            ],
          ),
        ),
      );
    }
    Widget listRekomendasi(){
      return Container(
        margin: EdgeInsets.only(left: 24,right: 24, top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Rekomendasi',
              style: blackTextStyle.copyWith(
                fontWeight: semibold,
                fontSize: 18,
              ),
            ),
            CustomList(thumbnail: 'b_nearby_resto1.png',title: 'Rich Chicken', caption: 'Pakuwon City', rating: '4,8',),
            CustomList(thumbnail: 'b_nearby_resto2.png',title: 'Starbucks BSD', caption: 'Bumi Serpong', rating: '4,9',),
            CustomList(thumbnail: 'b_nearby_resto3.png',title: 'Brzens Resto', caption: 'Jatinangor', rating: '4,6',),
          ],
        ),
      );
    }
    Widget listTerdekat(){
      return Container(
        margin: EdgeInsets.only(left: 24,right: 24, top: 30, bottom: 120),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Terdekat',
              style: blackTextStyle.copyWith(
                fontWeight: semibold,
                fontSize: 18,
              ),
            ),
            CustomList(thumbnail: 'b_nearby_resto1.png',title: 'Rich Chicken', caption: 'Pakuwon City', rating: '4,8',),
            CustomList(thumbnail: 'b_nearby_resto2.png',title: 'Starbucks BSD', caption: 'Bumi Serpong', rating: '4,9',),
            CustomList(thumbnail: 'b_nearby_resto3.png',title: 'Brzens Resto', caption: 'Jatinangor', rating: '4,6',),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        card(),
        listRekomendasi(),
        listTerdekat(),
      ],
    );
  }
}
