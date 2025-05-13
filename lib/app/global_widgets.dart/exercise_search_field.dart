import 'package:flutter/material.dart';
import 'package:habitats_24_mobile/app/home/home_view_model/home_view_model.dart';
import 'package:stacked/stacked.dart';

class ExerciseSearchField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final Color color;
  const ExerciseSearchField({
    super.key,
    required this.hintText,
    required this.controller,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder:
          (context, model, child) => Container(
            height: 60,
            width: double.infinity, // Apply width to the Container
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TextField(
                  controller: controller,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: InputDecoration(
                    hintText: hintText,
                    hintStyle: const TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                    ),
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
    );
  }
}
