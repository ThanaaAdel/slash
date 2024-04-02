import 'generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:klocalizations_flutter/klocalizations_flutter.dart';
import 'core/Routing/app_router.dart';
import 'core/Routing/routers.dart';
import 'core/theming/colors.dart';

class SlashApp extends StatelessWidget {
  final AppRouter appRouter;
  const SlashApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        locale: const Locale('en'),
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        debugShowCheckedModeBanner: false,
        title: 'Doc App',
        theme: ThemeData(
          primaryColor: ColorsManager.mainColor,
          scaffoldBackgroundColor: Colors.white,
        ),
        initialRoute: Routes.managerProfilePage,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
