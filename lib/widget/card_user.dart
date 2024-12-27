import 'package:flutter/material.dart';

class ExperienceCard extends StatelessWidget {
  final String title; // Title of the job or role
  final String startDate; // Start date
  final bool isCurrent; // Determines whether to show "Current"
  final String? endDate; // Optional end date
  final String description; // Job description

  const ExperienceCard({
    Key? key,
    required this.title,
    required this.startDate,
    this.isCurrent = false,
    this.endDate,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const fixedColor = Color.fromRGBO(0, 150, 136, 1.0);

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: fixedColor,
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: const Icon(
              Icons.calendar_month_outlined,
              color: fixedColor,
            ),
            title: Row(
              children: [
                Text(
                  startDate, // Start date
                  style: const TextStyle(
                    fontSize: 16,
                    color: fixedColor,
                  ),
                ),
                const SizedBox(width: 5),
                if (isCurrent)
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: fixedColor,
                    ),
                    width: 68.8,
                    height: 25,
                    child: const Center(
                      child: Text(
                        "Current",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  )
                else if (endDate != null)
                  Text(
                    " - $endDate", // End date
                    style: const TextStyle(
                      fontSize: 16,
                      color: fixedColor,
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Text(
            description,
            style: const TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }
}
