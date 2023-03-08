import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mvvm/core/service_locator.dart';
import 'package:provider/provider.dart';

import 'core/constant.dart';
import 'data/repository/home_repository_imple.dart';
import 'presentation/view/splash_screen.dart';
import 'presentation/view_model/feature_bock_provider.dart';
import 'presentation/view_model/fetch_newest_bock_provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setPreferredOrientations();
  setSystemUIOverlayStyle();
  setup();
  runApp(const MVVMApp());
}

void setSystemUIOverlayStyle() {
  return SystemChrome.setSystemUIOverlayStyle(
  const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ),
);
}

Future<void> setPreferredOrientations() {
  return SystemChrome.setPreferredOrientations(
  [
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ],
);
}

class MVVMApp extends StatelessWidget {
  const MVVMApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => FeatureBockProvider(
            getIt.get<HomeRepositoryImpl>(),
          )..fetchFeatureBock(),
        ),

        ChangeNotifierProvider(
          create: (context) => FetchNewestBockProvider(
            getIt.get<HomeRepositoryImpl>(),
          )..fetchNewestBock(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            home: const SplashScreen(),
            theme: ThemeData.dark().copyWith(
              useMaterial3: true,
              scaffoldBackgroundColor: kPrimaryColor,
              textTheme:
                  GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
            ),
          );
        },
      ),
    );
  }
}
