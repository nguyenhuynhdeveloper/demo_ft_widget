import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
 
      Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Để tắt Banner debug đi
      theme: ThemeData(
          // fontFamily: Fonts.SFPro
          // fontFamily: Fonts.regular
           brightness: Brightness.light,   // Chỉnh dark : light/ dard
    primaryColor: Colors.blueGrey
          ), // Để có thể dùng themColor, hay font chữ thay đổi cho toàn app cho toàn App
      home: (TinCoderView()), //  Nhận vào 1 màn hình cố định

      // routes: routes,  // Nhận 1 danh sách các màn hình
      // initialRoute: '/',   // Màn hình mặc định được lên đầu tiên
    );
  
  }
}


class TinCoderView extends StatefulWidget {
  const TinCoderView({Key? key}) : super(key: key);

  @override
  State<TinCoderView> createState() => _TinCoderViewState();
}

class _TinCoderViewState extends State<TinCoderView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: 100, 
        width: 100, 
        color: Colors.yellow,
      )
    );
  }
}