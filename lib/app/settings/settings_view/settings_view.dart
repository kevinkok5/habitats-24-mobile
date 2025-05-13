import 'package:flutter/material.dart';
import 'package:habitats_24_mobile/app/settings/settings_view_model/settings_view_model.dart';
import 'package:stacked/stacked.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SettingsViewModel>.reactive(
      viewModelBuilder: () => SettingsViewModel(),
      builder:
          (context, model, childdd) => Scaffold(
            appBar: AppBar(
              title: const Text('Settings'),
              centerTitle: true,
              backgroundColor: Colors.transparent,
            ),
            body: Center(child: Text('Welcome to the Settings View')),
          ),
    );
  }
}
