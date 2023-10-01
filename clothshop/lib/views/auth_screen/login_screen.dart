import 'package:clothshop/consts/consts.dart';
import 'package:clothshop/widgets_common/app_logo_widget.dart';
import 'package:clothshop/widgets_common/bg_widget.dart';
import 'package:clothshop/widgets_common/custom_text_field.dart';
import 'package:clothshop/widgets_common/our_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
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
                      onPress: () {})
                  .box
                  .width(context.screenWidth - 50)
                  .make(),
            ],
          )
              .box
              .white
              .rounded
              .padding(const EdgeInsets.all(16))
              .width(context.screenWidth - 70)
              .make(),
        ]),
      ),
    ));
  }
}
