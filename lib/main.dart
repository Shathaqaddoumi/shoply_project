import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shoply_app/core/dependencies/main/main_dependency.dart';

import 'firebase_options.dart';
import 'features/app/view/shoply_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await MainDependency.mainInitDependency();

  runApp(const ShoplyApp());
}
