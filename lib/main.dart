import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ui_profile_flutter_riverpod/app.dart';
import 'package:ui_profile_flutter_riverpod/core/providers/provider_app.dart';

void main() async {
  runApp(
    UncontrolledProviderScope(
      container: await initializeApp(),
      child: const App(),
    ),
  );
}
