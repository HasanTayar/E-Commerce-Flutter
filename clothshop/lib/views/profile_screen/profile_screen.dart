import 'package:clothshop/consts/consts.dart';
import 'package:clothshop/consts/lists.dart';
import 'package:clothshop/views/profile_screen/components/detail_card.dart';
import 'package:clothshop/widgets_common/bg_widget.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Align(
                  alignment: Alignment.topRight,
                  child: Icon(
                    Icons.edit,
                    color: whiteColor,
                  ),
                ).onTap(() {}),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    Image.asset(
                      imgProfile2,
                      width: 100,
                      fit: BoxFit.cover,
                    ).box.roundedFull.clip(Clip.antiAlias).make(),
                    10.widthBox,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          "Dammy User".text.fontFamily(semibold).white.make(),
                          5.heightBox,
                          "example@example.com".text.white.make()
                        ],
                      ),
                    ),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: whiteColor)),
                      onPressed: () {},
                      child: "Log out".text.fontFamily(semibold).white.make(),
                    ),
                  ],
                ),
              ),
              20.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  detailCard(
                    count: "00",
                    title: "In your cart",
                    width: (context.screenWidth / 3.4),
                  ),
                  detailCard(
                    count: "00",
                    title: "In your wishlist",
                    width: (context.screenWidth / 3.4),
                  ),
                  detailCard(
                    count: "00",
                    title: "Your orders",
                    width: (context.screenWidth / 3.4),
                  ),
                ],
              ),
              ListView.separated(
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return const Divider(
                    color: lightGrey,
                  );
                },
                itemCount: profileButtonList.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: Image.asset(
                      profileButtonIcon[index],
                      width: 22,
                    ),
                    title: profileButtonList[index]
                        .text
                        .fontFamily(semibold)
                        .color(darkFontGrey)
                        .make(),
                  );
                },
              )
                  .box
                  .white
                  .rounded
                  .margin(const EdgeInsets.all(12))
                  .padding(
                      const EdgeInsetsDirectional.symmetric(horizontal: 16))
                  .shadowSm
                  .make()
                  .box
                  .color(redColor)
                  .make(),
            ],
          ),
        ),
      ),
    );
  }
}
