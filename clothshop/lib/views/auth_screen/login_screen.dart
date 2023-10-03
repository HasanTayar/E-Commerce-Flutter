import 'package:clothshop/consts/consts.dart';
import 'package:clothshop/consts/lists.dart';
import 'package:clothshop/views/auth_screen/signup_screen.dart';
import 'package:clothshop/views/home_screen/home.dart';
import 'package:clothshop/widgets_common/app_logo_widget.dart';
import 'package:clothshop/widgets_common/bg_widget.dart';
import 'package:clothshop/widgets_common/custom_text_field.dart';
import 'package:clothshop/widgets_common/our_button.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(children: [
          (context.screenHeight * 0.1).heightBox,
          appLogoWidget(),
          10.heightBox,
          "Log in to $appname".text.fontFamily(bold).white.size(18).make(),
          10.heightBox,
          Column(
            children: [
              coustomTextField(hint: emailHint, title: email),
              coustomTextField(hint: passwordHint, title: password),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: () {},
                    child: forgetPass.text.color(Colors.lightBlue).make()),
              ),
              5.heightBox,
              ourButton(
                  color: redColor,
                  title: login,
                  textColor: whiteColor,
                  onPress: () {
                    Get.to(() => const Home());
                  }).box.width(context.screenWidth - 50).make(),
              5.heightBox,
              createNewAccount.text.color(fontGrey).make(),
              5.heightBox,
              ourButton(
                  color: lightGold,
                  title: signup,
                  textColor: redColor,
                  onPress: () {
                    Get.to(() => const SignUpScreen());
                  }).box.width(context.screenWidth - 50).make(),
              10.heightBox,
              loginWith.text.color(fontGrey).make(),
              5.heightBox,
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      3,
                      (index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              radius: 25,
                              backgroundColor: lightGrey,
                              child: Image.asset(
                                socialIconsList[index],
                                width: 40,
                              ),
                            ),
                          )))
            ],
          )
              .box
              .white
              .rounded
              .shadowSm
              .padding(const EdgeInsets.all(16))
              .width(context.screenWidth - 70)
              .make(),
        ]),
      ),
    ));
  }
}
