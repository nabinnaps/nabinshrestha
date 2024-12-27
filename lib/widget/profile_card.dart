import 'package:flutter/material.dart';

import 'loader_skill.dart';

class ProfileContainer extends StatelessWidget {
  final double width;
  final double height;
  final Color fixedColor;

  const ProfileContainer({
    Key? key,
    required this.width,
    required this.height,
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
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: height * 0.4,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/profile.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(8),
                    ),
                  ),
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Nabin Shrestha",
                      style: TextStyle(
                        fontSize: 30,
                        color: fixedColor,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          ListTile(
            leading: Icon(Icons.wallet_travel_outlined, color: fixedColor),
            title: Text(
              "Mobile App Developer",
              style: TextStyle(color: fixedColor),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home_filled, color: fixedColor),
            title: Text(
              "Newroad, Pokhara",
              style: TextStyle(color: fixedColor),
            ),
          ),
          ListTile(
            leading: Icon(Icons.email, color: fixedColor),
            title: Text(
              "newanabin2000@gmail.com",
              style: TextStyle(color: fixedColor),
            ),
          ),
          ListTile(
            leading: Icon(Icons.phone, color: fixedColor),
            title: Text(
              "+977-9807138172",
              style: TextStyle(color: fixedColor),
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.scatter_plot_outlined, color: fixedColor),
            title: Text(
              "Skills",
              style: TextStyle(
                color: fixedColor,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          SkillProgress(skillName: "Dart", percentage: 0.5),
          SkillProgress(skillName: "Design", percentage: 0.3),
          SkillProgress(skillName: "Python", percentage: 0.45),
          SkillProgress(skillName: "C++", percentage: 0.5),
          SizedBox(height: 10),
          ListTile(
            leading: Icon(Icons.language_outlined),
            title: Text(
              "Languages",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          SkillProgress(skillName: "Nepali", percentage: 0.7),
          SkillProgress(skillName: "Hindi", percentage: 0.5),
          SkillProgress(skillName: "English", percentage: 0.65),
        ],
      ),
    );
  }
}
