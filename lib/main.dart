import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_0006/home/view.dart';
import 'package:flutter_0006/other/view.dart';
import 'package:get/get.dart';

void main() {
  // 確保 flutter 完成載入
  WidgetsFlutterBinding.ensureInitialized();

  // 鎖住 螢幕轉向
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(
      GetMaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: '/',
          getPages: [
            GetPage(name: '/', page: () => HomePage()),
            GetPage(name: '/other', page: () => OtherPage()),
          ],
      )
  );
}