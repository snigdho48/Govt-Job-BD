import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';


class ThemeUtils{
  static final light= ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFFF5F7FC)
    ),
    cardColor: Colors.white,
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: Color(0xFFF5F7FC),
    brightness: Brightness.light,
    hintColor: Colors.black,

    // next line is important!
  );
  static final dark= ThemeData(
    appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xFF010C15)
    ),
      cardColor: const Color(0xFF011627),
      primarySwatch: Colors.red,
      scaffoldBackgroundColor: Color(0xFF010C15),
      brightness: Brightness.dark,
      hintColor: Colors.white,


  );
}
class ThemeServices{
     final _box= GetStorage();
     final _key='isDarkMode';
     _saveTheme(bool isDarkMode)=>_box.write(_key, isDarkMode);
     bool loadTheme()=> _box.read(_key)??false;
     ThemeMode get theme=> loadTheme()?ThemeMode.dark:ThemeMode.light;

     void swtichTheme(){
       Get.changeThemeMode(loadTheme()?ThemeMode.light:ThemeMode.dark);
       _saveTheme(!loadTheme());
     }

}

