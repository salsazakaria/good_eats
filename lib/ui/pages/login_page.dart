import 'package:flutter/material.dart';
import 'package:good_eats/ui/widgets/custom_button.dart';
import '../../../shared/theme.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget title(){
      return Container(
        margin: EdgeInsets.only(top: 50),
        child: Text(
          'Ayo Bergabung \nBersama Kami',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: bold,
          ),
        ),
      );
    }
    Widget inputSection(){
      Widget emailInput(){
        return Container(
          margin: EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Email Address',
                style: blackTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: regular,
                ),
              ),
              SizedBox(
                height: 6,
              ),
              TextFormField(
                cursorColor: kBlackColor,
                style: blackTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: regular,
                ),
                decoration: InputDecoration(
                  hintText: 'Your Address',
                  border: OutlineInputBorder(
                    borderRadius : BorderRadius.circular(defaultRadius),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    borderSide: BorderSide(
                      color: kBrandColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }
      Widget passwordInput(){
        return Container(
          margin: EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Password',
                style: blackTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: regular,
                ),
              ),
              SizedBox(
                height: 6,
              ),
              TextFormField(
                obscureText: true,
                cursorColor: kBlackColor,
                style: blackTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: regular,
                ),
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius : BorderRadius.circular(defaultRadius),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    borderSide: BorderSide(
                      color: kBrandColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }
      Widget submitButton(){
        return CustomButton(
          title: 'Masuk',
          pressed: (){
            Navigator.pushNamed(context, '/home');
          }
          );
      }

      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 20,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            emailInput(),
            passwordInput(),
            SizedBox(height: 10),
            submitButton(),
          ],
        ),
      );
    }
    Widget sudahPunyaAkun(){
      return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 50),
        child: TextButton(
          onPressed: (){
            Navigator.pushNamed(context, '/log-in');
          },
          child: TextButton(
            onPressed: (){
              Navigator.pushNamed(context, '/sign-up');
            },
            child: Text(
              'Belum Punya Akun?',
              style: greyTextStyle.copyWith(
                fontSize: 16,
                fontWeight: regular,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBgColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          children: [
            title(),
            inputSection(),
            sudahPunyaAkun(),
          ],
        ),
      ),
    );
  }
}
