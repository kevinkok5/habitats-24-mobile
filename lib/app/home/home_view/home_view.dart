import 'package:flutter/material.dart';
import 'package:habitats_24_mobile/app/home/home_view_model/home_view_model.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder:
          (context, model, child) => Scaffold(
            appBar: AppBar(
              title: const Text('Home'),
              centerTitle: true,
              backgroundColor: Colors.transparent,
            ),
            body: Center(child: Text('Welcome to the Home View')),
          ),
    );
  }
}
