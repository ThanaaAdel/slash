
import 'package:ablexa/features/feature_profile_manager_page/logic/cubit/profile_cubit/profile_cubit.dart';
import 'package:ablexa/features/feature_profile_manager_page/logic/cubit/updated_user_profile_cubit/updated_user_profile_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/feature_profile_manager_page/presentations/screens/profile_manager.dart';
import '../di/dependacy_injection.dart';
import 'routers.dart';
class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {

    // manager profile
      case Routes.managerProfilePage:
        return MaterialPageRoute(
          builder: (context) => MultiBlocProvider(
              providers: [
                BlocProvider(create: (context) => getIt<ProfileCubit>(), ),
                BlocProvider(create: (context) => getIt<UpdatedUserProfileCubit>(), ),
              ],
              child: const ProfileManagerPage()),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(child: Text("No route defind ${settings.name}")),
          ),
        );
    }
  }
}
