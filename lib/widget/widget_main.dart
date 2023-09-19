// import 'dart:js';

import 'package:demo_ft_widget/widget/demo_AlertDialog.dart';
import 'package:demo_ft_widget/widget/demo_BottomAppBar.dart';
import 'package:demo_ft_widget/widget/demo_Column.dart';
import 'package:demo_ft_widget/widget/demo_Container.dart';
import 'package:demo_ft_widget/widget/demo_DropdownButton2.dart';
import 'package:demo_ft_widget/widget/demo_GestureDetector.dart';
import 'package:demo_ft_widget/widget/demo_Image.dart';
import 'package:demo_ft_widget/widget/demo_ListView.dart';
import 'package:demo_ft_widget/widget/demo_Row.dart';
import 'package:demo_ft_widget/widget/demo_Scrren1.dart';
import 'package:demo_ft_widget/widget/demo_Stack.dart';
import 'package:demo_ft_widget/widget/demo_TextField.dart';
import 'package:demo_ft_widget/widget/demo_Scaffold.dart';
import 'package:demo_ft_widget/widget/demo_showModalBottomSheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:demo_ft_widget/widget/Scaffold/demo_Scaffold.dart';
import 'package:demo_ft_widget/widget/ScrollView/demo_SingleChildScrollView.dart';

class DemoWidget extends StatefulWidget {
  const DemoWidget({Key? key}) : super(key: key);

  @override
  State<DemoWidget> createState() => _DemoWidgetState();
}

// 1 App Bắt buộc phải có MaterialApp (home: Widget)
class _DemoWidgetState extends State<DemoWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Để tắt Banner debug đi
      theme: ThemeData(
          // fontFamily: Fonts.SFPro
          // fontFamily: Fonts.regular
          brightness: Brightness.light, // Chỉnh dark : light/ dard
          primaryColor: Colors
              .blueGrey), // Để có thể dùng themColor, hay font chữ thay đổi cho toàn app cho toàn App
      // home: (Demo_Scaffold()), //  Nhận vào 1 màn hình cố định
      home: ( const SingleChildScrollViewExample()), 

      // routes: routes, // Nhận 1 danh sách các màn hình
      // initialRoute: '/', // Màn hình mặc định được lên đầu tiên
    );
  }
}

Map<String, WidgetBuilder> get routes => {
      '/': (context) => const DemoScaffold(),
      '/Container': (context) => const DemoContainer(),
      '/Image': (context) => const DemoImage(),
      '/Column': (context) => const DemoColumn(),
      '/Row': (context) => const DemoRow(),
      '/Stack': (context) => const DemoStack(),
      '/ListView': (context) => const DemoListView(),
      '/TextField': (context) => const DemoTextField(),
      '/GestureDetector': (context) => const DemoGestureDetector(),
      '/BottomAppBar': (context) => const DemoBotomAppBar(),
      '/AlertDialog': (context) => const DialogExample(),
      '/showModalBottomSheet': (context) => const BottomSheetExample(),
      '/DropDownButton2': (context) => const DemoDropDownButton2(),
    };
