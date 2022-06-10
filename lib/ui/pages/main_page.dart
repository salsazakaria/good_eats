import 'package:flutter/material.dart';
import 'package:good_eats/ui/pages/home_page.dart';
import 'package:good_eats/ui/widgets/custom_bottom_nav.dart';
import '../../shared/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget buildContent(){
      return HomePage();
    }
    Widget customBottomNavigation(){
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: EdgeInsets.only(bottom: 30, left: defaultMargin, right: defaultMargin),
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomBottomNav(imageUrl: 'icon_home.png', isSelected: true,),
              CustomBottomNav(imageUrl: 'icon_book.png',),
              CustomBottomNav(imageUrl: 'icon_payment.png',),
              CustomBottomNav(imageUrl: 'icon_setting.png',),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBgColor,
      body: Stack(
        children: [
          // customBottomNavigation(),
          buildContent(),
          customBottomNavigation(),
        ],
      ),
    );
  }
}
