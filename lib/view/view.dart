// import 'dart:js';

import 'package:demo_ft_widget/view/demo_AlertDialog.dart';
import 'package:demo_ft_widget/view/demo_BottomAppBar.dart';
import 'package:demo_ft_widget/view/demo_Column.dart';
import 'package:demo_ft_widget/view/demo_Container.dart';
import 'package:demo_ft_widget/view/demo_DropdownButton2.dart';
import 'package:demo_ft_widget/view/demo_GestureDetector.dart';
import 'package:demo_ft_widget/view/demo_Image.dart';
import 'package:demo_ft_widget/view/demo_ListView.dart';
import 'package:demo_ft_widget/view/demo_Row.dart';
import 'package:demo_ft_widget/view/demo_Scrren1.dart';
import 'package:demo_ft_widget/view/demo_Stack.dart';
import 'package:demo_ft_widget/view/demo_TextField.dart';
import 'package:demo_ft_widget/view/demo_Scaffold.dart';
import 'package:demo_ft_widget/view/demo_showModalBottomSheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class View extends StatefulWidget {
  const View({Key? key}) : super(key: key);

  @override
  State<View> createState() => _ViewState();
}

// 1 App Bắt buộc phải có MaterialApp (home: Widget)
class _ViewState extends State<View> {
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
      // home: (DemoScreen()), //  nhận vào 1 màn hình cố định

      routes: routes,  //danh sách các màn hình
      initialRoute: '/',   // màn hình mặc định được lên đầu tiên
    );
  }
}

Map<String, WidgetBuilder> get routes => {
      '/': (context) => const DemoScaffold(),
      '/Container' : (context) => const DemoContainer(),
      '/Image' : (context) => const DemoImage(),
      '/Column' : (context) => const DemoColumn(),
      '/Row': (context) => const DemoRow(),
      '/Stack': (context) => const DemoStack(),
      '/ListView': (context) => const DemoListView(),
      '/TextField' : (context) => const DemoTextField(),
      '/GestureDetector' : (context) => const DemoGestureDetector(),  
      '/BottomAppBar' : (context) =>  const DemoBotomAppBar(),
      '/AlertDialog' : (context) =>  const DialogExample(),
      '/showModalBottomSheet' : (context) => const BottomSheetExample(),
      '/DropDownButton2' : (context) =>  const DemoDropDownButton2(),
    };
