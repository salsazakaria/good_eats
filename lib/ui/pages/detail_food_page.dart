import 'package:flutter/material.dart';
import 'package:good_eats/ui/pages/detail_food_content.dart';
import 'package:good_eats/ui/widgets/custom_order_nav.dart';
import '../../shared/theme.dart';

class DetailFoodPage extends StatelessWidget {
  const DetailFoodPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget buildContent(){
      return DetailFoodContent();
    }
    Widget customBottomNavigation(){
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          child: CustomOrderNav(),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBgColor,
      body: Stack(
        children: [
          buildContent(),
          customBottomNavigation(),
        ],
      ),
    );
  }
}
