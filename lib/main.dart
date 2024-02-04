import 'package:flutter/material.dart';
import 'package:flutter_potential_issues/injection.dart';
import 'package:flutter_potential_issues/presentation/app.dart';

void main() {
  configureDependencies(); 
  runApp(App());
}
