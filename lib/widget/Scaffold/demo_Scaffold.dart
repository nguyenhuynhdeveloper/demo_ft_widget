import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Demo_Scaffold extends StatefulWidget {
  const Demo_Scaffold({super.key});

  @override
  State<Demo_Scaffold> createState() => _MyAppState();
}

class _MyAppState extends State<Demo_Scaffold> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // 1 App chỉ - phải có 1 MaterialApp
        title: 'Flutter Demo', // Tên của ngôi nhà
        theme: ThemeData(
          // Màu sơn của ngôi nhà
          primarySwatch: Colors.green,
        ),
        home:
            MyHomePage() //Nhà chính // Tới đây hất lên là hết gốc của App rồi --- home của MaterialApp
        );
  }
}

// Đây là nhà chính ứng dụng --- 1 màn hình
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool demoState = true;

  void changeState() {
    setState(() {
      demoState = !demoState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Giàn giáo
      appBar: AppBar(backgroundColor: Colors.blue), // Phần đầu của ứng dụng

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      body: Column(
        children: [
          Container(
            height: 200,
            width: 200,
            //  color: Colors.amber,

            child: Text("ĐÂy là nội dung bên trong container"),

            // padding: EdgeInsets.all(30),
            margin: EdgeInsets.symmetric(vertical: 10),
            alignment: Alignment.center,

            //KHI ĐÃ DÙNG decoration thì k được phép đùng color nữa
            decoration: BoxDecoration(
              color: Color.fromRGBO(47, 47, 79, 1),

              border: Border.all(width: 1, color: Colors.green),

              // borderRadius: BorderRadius.all(Radius.circular(20)),
              // borderRadius: BorderRadius.horizontal(left: Radius.circular(20)),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(80.0),
                  bottomLeft: Radius.circular(80.0)),

              boxShadow: [
                BoxShadow(color: Colors.blueGrey, spreadRadius: 1),
              ],
            ),

            // transform:  Matrix4.rotationZ(0.4),
            transform: demoState == true
                ? Matrix4.rotationY(1)
                : Matrix4.rotationY(10),
          ),
          Container(
            height: 200,
            width: 200,
            color: Colors.blue,
            child: InkWell(
              child: Text("Bấm để thay đổi "),
              onTap: (() {
                changeState();
              }),
            ),
          )
        ],
      ),

      bottomNavigationBar: Container(
        height: 80,
        color: Colors.red,
      ), // Phần chân ứng dụng
      floatingActionButton: Container(
        height: 40,
        width: 40,
        color: Colors.pink,
      ), // nút bấm người dùng hay sử dụng
    ); // Phần bụng của ứng dụng
  }
}

// floatingActionButton: FloatingActionButton(
//   onPressed: () {}

// bottomNavigationBar: BottomAppBar(
//         child: Row(
//           children: <Widget>[
//             IconButton(
//               tooltip: 'Open popup menu',
//               icon: const Icon(Icons.more_vert),
//               onPressed: () {
//                 final SnackBar snackBar = SnackBar(
//                   content: const Text('Yay! A SnackBar!'),
//                   action: SnackBarAction(
//                     label: 'Undo',
//                     onPressed: () {},
//                   ),
//                 );
//                 // and use it to show a SnackBar.
//                 ScaffoldMessenger.of(context).showSnackBar(snackBar);
//               },
//             ),
//             IconButton(
//               tooltip: 'Search',
//               icon: const Icon(Icons.search),
//               onPressed: () {},
//             ),
//             IconButton(
//               tooltip: 'Favorite',
//               icon: const Icon(Icons.favorite),
//               onPressed: () {},
//             ),
//                IconButton(
//               tooltip: 'Favorite',
//               icon: const Icon(Icons.favorite),
//               onPressed: () {},
//             ),
//           ],
//         ),
//       )
