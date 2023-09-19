// Cách sử dụng Navigator.pushNamed(context, '/nameScreen')

// import 'dart:html';

import 'package:demo_ft_widget/effect_loading/app.dart';

import 'package:demo_ft_widget/navigate/pushNamed/screen_pushNamed.dart';
import 'package:flutter/material.dart';

class PushNamed extends StatelessWidget {
  const PushNamed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // fontFamily: Fonts.SFPro
          // fontFamily: Fonts.regular
          ),
      routes: routesList,

      initialRoute: //Danh sách các màn hình mà có thể chuyển Navigator sang
          "/", // Màn hình mặc định khi khởi tạo app là chạy lên
    );
  }
}

//Map danh sách các màn hình có thể chuyển qua chuyển lại trong ứng dụng : get routeList => {}
Map<String, WidgetBuilder> get routesList => {
      "/": (context) => const HomePage(),
      "/Screen1": (context) => const Screen1(),
    };

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learning Flutter'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 150,
              height: 150,
              child: Container(height: 100, width: 100),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/Screen1",
                    arguments: {'argumentRoute': "ArgumentRouteContent"});
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.amber,
                padding: const EdgeInsets.all(16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0),
                ),
              ),
              child: const Text(
                "Sang màn 1",
                style: const TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
            Text(
              "xinchafo",
              style: TextStyle(color: Colors.amber),
            ),
          ],
        ),
      ),
    );
  }
}
