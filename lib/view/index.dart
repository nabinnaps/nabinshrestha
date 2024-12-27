import 'package:flutter/material.dart';
import 'package:nabinshrestha/view/footer.dart';
import 'package:nabinshrestha/widget/education_card.dart';
import 'package:nabinshrestha/widget/experience_card.dart';
import 'package:nabinshrestha/widget/profile_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    const fixedColor = Color.fromRGBO(0, 150, 136, 1.0);

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(
                left: size.width * 0.04, right: size.width * 0.04, top: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                size.width <= 600
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          
                          ProfileContainer(width: size.width <= 600
                                ? size.width
                                : size.width * 0.29, height: size.height, fixedColor: fixedColor),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              WorkExperienceContainer(width: size.width <= 600
                                    ? size.width
                                    : size.width * 0.6, fixedColor: fixedColor),
                              
                              SizedBox(
                                height: 20,
                              ),
                              EducationContainer(width: size.width <= 600
                                    ? size.width
                                    : size.width * 0.6),
                              SizedBox(
                                height: 15,
                              ),
                              FooterScreen()
                            ],
                          ),
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           ProfileContainer(width: size.width <= 600
                                ? size.width
                                : size.width * 0.29, height: size.height, fixedColor: fixedColor),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              WorkExperienceContainer(width: size.width <= 600
                                    ? size.width
                                    : size.width * 0.6, fixedColor: fixedColor),
                              SizedBox(
                                height: 20,
                              ),
                              EducationContainer(width: size.width <= 600
                                    ? size.width
                                    : size.width * 0.6),
                              SizedBox(
                                height: 15,
                              ),
                              FooterScreen()
                            ],
                          ),
                        ],
                      ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
