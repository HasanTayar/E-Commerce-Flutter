import 'package:clothshop/widgets_common/app_logo_widget.dart';
import 'package:clothshop/widgets_common/bg_widget.dart';
import 'package:clothshop/widgets_common/custom_text_field.dart';
import 'package:clothshop/widgets_common/our_button.dart';
import 'package:flutter/material.dart';
import 'package:clothshop/consts/consts.dart';
import 'package:get/route_manager.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool? isCheck = false;
  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(children: [
          (context.screenHeight * 0.1).heightBox,
          appLogoWidget(),
          10.heightBox,
          "Join the $appname".text.fontFamily(bold).white.size(18).make(),
          10.heightBox,
          Column(
            children: [
              coustomTextField(hint: nameHint, title: name),
              coustomTextField(hint: emailHint, title: email),
              coustomTextField(hint: passwordHint, title: password),
              coustomTextField(hint: reTypePassword, title: reTypePassword),
              // Align(
              //   alignment: Alignment.centerRight,
              //   child: TextButton(
              //       onPressed: () {},
              //       child: forgetPass.text.color(Colors.lightBlue).make()),
              // ),
              5.heightBox,
              Row(
                children: [
                  Checkbox(
                    activeColor: redColor,
                    checkColor: whiteColor,
                    value: isCheck,
                    onChanged: (newValue) {
                      setState(() {
                        isCheck = newValue;
                      });
                    },
                  ),
                  10.widthBox,
                  Expanded(
                    child: RichText(
                        text: const TextSpan(children: [
                      TextSpan(
                          text: "I agree to the ",
                          style: TextStyle(
                            fontFamily: regular,
                            color: fontGrey,
                          )),
                      TextSpan(
                          text: termAndCond,
                          style: TextStyle(
                            fontFamily: regular,
                            color: redColor,
                          )),
                      TextSpan(
                          text: " & ",
                          style: TextStyle(
                            fontFamily: regular,
                            color: fontGrey,
                          )),
                      TextSpan(
                          text: privacyPolicy,
                          style: TextStyle(
                            fontFamily: regular,
                            color: redColor,
                          )),
                    ])),
                  )
                ],
              ),
              ourButton(
                      color: isCheck == true ? redColor : lightGrey,
                      title: signup,
                      textColor: whiteColor,
                      onPress: () {})
                  .box
                  .width(context.screenWidth - 50)
                  .make(),
              10.heightBox,
              RichText(
                  text: const TextSpan(children: [
                TextSpan(
                  text: alreadyHavingAccount,
                  style: TextStyle(fontFamily: bold, color: fontGrey),
                ),
                TextSpan(
                  text: login,
                  style: TextStyle(fontFamily: bold, color: redColor),
                ),
              ])).onTap(() {
                Get.back();
              })
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
