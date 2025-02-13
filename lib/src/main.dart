import 'dart:io';

import 'package:daily_log/generated/l10n.dart';
import 'package:daily_log/src/log_form.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _initApp();
  runApp(const MyApp());
}

Future<void> _initApp() async {
  if (!kIsWeb) {
    Hive.init(await _getApplicationPath());
  }
}

Future<String> _getApplicationPath() async {
  final documentsDirectory = await getApplicationDocumentsDirectory();
  final path = !kIsWeb && Platform.isWindows
      ? p.join(documentsDirectory.path, "/dailyLog")
      : documentsDirectory.path;
  final directory = Directory(path);
  if (!await directory.exists()) await directory.create(recursive: true);
  return path;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [S.delegate],
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LogFormPage(),
    );
  }
}
