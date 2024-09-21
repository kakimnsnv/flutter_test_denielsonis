import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test_denielsonis/core/routing/get_router.dart';
import 'package:flutter_test_denielsonis/core/styles/theme.dart';
import 'package:flutter_test_denielsonis/features/auth/user_session.dart';
import 'package:flutter_test_denielsonis/generated/l10n.dart';
import 'package:get/get.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      builder: (context, _) => GetMaterialApp(
        initialBinding: BindingsBuilder(() {
          Get.put(UserSession(), permanent: true);
        }),
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const [
          S.delegate,
          DefaultMaterialLocalizations.delegate,
          DefaultWidgetsLocalizations.delegate,
          DefaultCupertinoLocalizations.delegate,
        ],
        localeResolutionCallback: (locale, supportedLocales) {
          for (final supportedLocale in supportedLocales) {
            if (supportedLocale.languageCode == locale?.languageCode) {
              return supportedLocale;
            }
          }
          return supportedLocales.first;
        },
        supportedLocales: S.delegate.supportedLocales,
        locale: const Locale("en"),
        theme: themeData,
        initialRoute: initialRoute,
        getPages: pages,
        enableLog: true,
      ),
    );
  }
}
