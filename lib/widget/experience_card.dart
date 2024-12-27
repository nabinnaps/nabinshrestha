import 'package:flutter/material.dart';

import 'card_user.dart';

class WorkExperienceContainer extends StatelessWidget {
  final double width;
  final Color fixedColor;

  const WorkExperienceContainer({
    Key? key,
    required this.width,
    required this.fixedColor,
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
        padding: const EdgeInsets.only(top: 15.0),
        child: Column(
          children: [
            ListTile(
              leading: Icon(
                Icons.work_rounded,
                size: 40,
                color: fixedColor,
              ),
              title: Text(
                "Work Experience",
                style: TextStyle(
                  color: Color.fromRGBO(0, 150, 136, 1.0),
                  fontSize: 30,
                ),
              ),
            ),
            ExperienceCard(
              title: "Mid Level Mobile App Developer / Todpoles",
              startDate: "Nov 2024",
              isCurrent: true,
              description:
                  "Developing advanced mobile applications using Flutter, enhancing scalability, and collaborating with teams to create seamless user experiences. Gained expertise in feature implementation, performance optimization, and delivering high-quality apps.",
            ),
            ExperienceCard(
              title: "Junior Mobile App Developer / Nep Tech Pal Pvt. Ltd.",
              startDate: "4 Sep 2023",
              endDate: "15 Dec 2023",
              isCurrent: false,
              description:
                  "Worked on mobile app development with a focus on API integrations and app optimization. Improved skills in debugging, problem-solving, and delivering functional app features under guidance.",
            ),
            ExperienceCard(
              title: "Intern Mobile App Developer / XDezo Technologies.",
              startDate: "1 Jun 2023",
              endDate: "1 July 2023",
              isCurrent: false,
              description:
                  "Assisted in mobile app projects, learning the basics of app architecture, API usage, and performance testing. Built foundational knowledge in app development and industry best practices.",
            ),
          ],
        ),
      ),
    );
  }
}
