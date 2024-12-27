import 'package:flutter/material.dart';
import 'package:nabinshrestha/widget/card_user.dart';

class EducationContainer extends StatelessWidget {
  final double width;

  const EducationContainer({
    Key? key,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 2,
            offset: Offset(0, 3),
            spreadRadius: 0.1,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0, bottom: 10),
        child: Column(
          children: [
            ListTile(
              leading: Icon(
                Icons.cast_for_education,
                size: 40,
                color: Color.fromRGBO(0, 150, 136, 1.0),
              ),
              title: Text(
                "Education",
                style: TextStyle(
                  color: Color.fromRGBO(0, 150, 136, 1.0),
                  fontSize: 30,
                ),
              ),
            ),
            ExperienceCard(
              title: "Informatics College Pokhara",
              startDate: "2021",
              endDate: "2024",
              description:
                  "Successfully completed a Bachelor's in Information Technology (BIT), gaining in-depth knowledge of software development, mobile app design, database management, and system architecture. The program emphasized practical application through projects and collaborative teamwork, preparing me for real-world challenges in the tech industry.",
            ),
            ExperienceCard(
              title: "Xdezo Academy",
              startDate: "1 Dec 2022",
              endDate: "15 Feb 2023",
              isCurrent: false,
              description:
                  "Studied mobile app development with expertise in Flutter, app architecture, and UI/UX principles.",
            ),
          ],
        ),
      ),
    );
  }
}
