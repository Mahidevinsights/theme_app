import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_app/styles/app_colors.dart';
import '../cubit/theme_cubit.dart';

class Screen1 extends StatelessWidget {
  final List<Map<String, String>> stocks = [
    {"name": "Stock A", "price": "\$120.50", "change": "+1.2%"},
    {"name": "Stock B", "price": "\$90.25", "change": "-0.5%"},
    {"name": "Stock C", "price": "\$45.10", "change": "+0.8%"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Stocks",
          style: TextStyle(color: AppColors.textColor),
        ),
        backgroundColor: AppColors.primary,
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_forward, color: AppColors.textColor),
            onPressed: () {
              Navigator.pushNamed(context, '/screen2');
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: stocks.length,
              itemBuilder: (context, index) {
                final stock = stocks[index];
                return Card(
                  color: AppColors.background,
                  child: ListTile(
                    title: Text(
                      stock["name"]!,
                      style: TextStyle(
                        color: AppColors.headingText,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "Price: ${stock["price"]}",
                      style: TextStyle(color: AppColors.subheadingText),
                    ),
                    trailing: Text(
                      stock["change"]!,
                      style: TextStyle(
                        color: stock["change"]!.startsWith('-')
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
                Navigator.pushNamed(context, '/screen2');
              },
              child: Text(
                "Go to Screen 2",
                style: TextStyle(color: AppColors.buttonText),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primary,
        onPressed: () {
          context.read<ThemeCubit>().toggleTheme();
        },
        child: Icon(Icons.brightness_6, color: AppColors.textColor),
      ),
    );
  }
}
