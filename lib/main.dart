// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:flutter_native_splash/flutter_native_splash.dart';
// Project imports:
import 'package:escape_from_me/common/utils/logger.dart';
import 'package:escape_from_me/presentation/app.dart';

void main() {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  logger.info('** launch @ main');
  FlutterNativeSplash.remove();

  logger.info('** runApp @ main');
  runApp(const App());
}
