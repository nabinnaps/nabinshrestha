import 'package:flutter/material.dart';

class SkillProgress extends StatelessWidget {
  final String skillName;
  final double percentage; // Value between 0.0 and 1.0

  const SkillProgress({
    Key? key,
    required this.skillName,
    required this.percentage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const fixedColor = Color.fromRGBO(0, 150, 136, 1.0);

    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                skillName,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Text(
                "${(percentage * 100).toStringAsFixed(0)}%", // Show percentage as a whole number
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 15),
          LinearProgressIndicator(
            value: percentage,
            minHeight: 10,
            backgroundColor: Colors.grey[300],
            valueColor: AlwaysStoppedAnimation<Color>(fixedColor),
          ),
        ],
      ),
    );
  }
}
