import 'package:ablexa/slash_app.dart';
import 'package:flutter/material.dart';
import 'core/Routing/app_router.dart';
import 'core/di/dependacy_injection.dart';

void main() {

  setupGetIt();
  runApp( SlashApp(appRouter: AppRouter(),));
}


