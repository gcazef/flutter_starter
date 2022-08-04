import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:template/core/app.dart';
import 'package:template/core/data/local_database.dart';

late LocalDatabase localDatabase;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  localDatabase = await LocalDatabase.create();

  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}
