import 'package:flutter/material.dart';
import 'package:theme_app/styles/app_colors.dart';

class Screen2 extends StatelessWidget {
  final List<Map<String, String>> mutualFunds = [
    {"name": "Fund A", "nav": "\$102.30", "returns": "+8.5%"},
    {"name": "Fund B", "nav": "\$89.20", "returns": "+6.2%"},
    {"name": "Fund C", "nav": "\$120.40", "returns": "+7.8%"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Mutual Funds",
          style: TextStyle(color: AppColors.textColor),
        ),
        backgroundColor: AppColors.primary,
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_forward, color: AppColors.textColor),
            onPressed: () {
              Navigator.pushNamed(context, '/screen3');
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: mutualFunds.length,
              itemBuilder: (context, index) {
                final fund = mutualFunds[index];
                return Card(
                  color: AppColors.background,
                  child: ListTile(
                    title: Text(
                      fund["name"]!,
                      style: TextStyle(
                        color: AppColors.headingText,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "NAV: ${fund["nav"]}",
                      style: TextStyle(color: AppColors.subheadingText),
                    ),
                    trailing: Text(
                      fund["returns"]!,
                      style: TextStyle(
                        color: fund["returns"]!.startsWith('-')
                            ? Colors.red
                            : Colors.green,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/screen3');
              },
              child: Text(
                "Go to Screen 3",
                style: TextStyle(color: AppColors.buttonText),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
