import 'package:flutter_template/app/constants/constants.dart';
import 'package:flutter_template/app/routes/app_pages.dart';
import 'package:flutter_template/app/theme/theme.dart';
import 'package:flutter_template/generated/locales.g.dart';

import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //
  await GetStorage.init();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translationsKeys: AppTranslation.translations,
       localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: child!,
        );
      },
      supportedLocales: SUPPORTED_LOCALES,
      fallbackLocale: FALLBACK_LOCALE,
      locale: Get.deviceLocale,
      title: LocaleKeys.appTitle.tr,
      theme: appThemeData,
      initialRoute: Routes.HOME,
      getPages: AppPages.pages,
      defaultTransition: Transition.fadeIn,
    );
  }
}
