import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:pos/core/localization/translation_key_manager.dart';
import 'package:pos/core/resources_manager/constants_manager.dart';
import 'package:pos/core/resources_manager/style_manager.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    double _w = MediaQuery.of(context).size.width;
    int columnCount = _w > 800 ? 5 : 2;
    return SafeArea(
      child: Scaffold(
        body: ListView(
          physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 20
              ).copyWith(bottom: 5,),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(.005),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    TranslationKeyManager.appTitle.tr,
                    style: TextStyleManager.textStyleExtraBold.copyWith(
                      fontSize: 27,
                    ),
                  ),
                ],
              ),
            ),
            AnimationLimiter(
              child: GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.all(15),
                crossAxisCount: columnCount,
                children: List.generate(
                  ConstantsManager.gridItems.length,
                  (int index) {
                    return AnimationConfiguration.staggeredGrid(
                      position: index,
                      duration: Duration(seconds: 4),
                      columnCount: columnCount,
                      child: ScaleAnimation(
                        duration: Duration(seconds: 6),
                        curve: Curves.fastLinearToSlowEaseIn,
                        child: FadeInAnimation(
                          child: ConstantsManager.gridItems[index],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}