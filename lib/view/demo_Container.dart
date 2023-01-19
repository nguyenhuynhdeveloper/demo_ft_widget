import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DemoContainer extends StatefulWidget {
  const DemoContainer({Key? key}) : super(key: key);

  @override
  State<DemoContainer> createState() => _DemoContainerState();
}

class _DemoContainerState extends State<DemoContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(), // Để mặc định như này sẽ có nút back lại màn cũ
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(children: [
          // decoration : BoxDecoration
          Container(
            // Cách ra các hướng
            // margin: EdgeInsets.all(20),   : Các property của EdgeInsets
            // margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            // margin: EdgeInsets.fromLTRB(5, 10, 15, 20),
            margin: EdgeInsets.only(left: 30, top: 30, right: 30, bottom: 30),
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 80), // Padding là phần ruột cách viền các khoảng cách

            height: 100,
            width: 300,
            // alignment: Alignment.center, // Căn chỉnh vị trí của child -- nhưng sẽ phá kích thước

            decoration: BoxDecoration(
              // Đổ màu
              color: Colors.blue,

              border: Border.all(
                width: 8,
              ),
              //Bo viền
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10), bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
            
              // Đổ bóng
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ], // Đổ bóng cho viền
            ),

            // constraints: BoxConstraints.expand(
            //   height: Theme.of(context).textTheme.headlineMedium!.fontSize! * 1.1 + 200.0,
            // ),

            // transform: Matrix4.rotationZ(0.1), // Xoay hướng của toàn Container

            child: Container(height: 50, width: 50, color: Colors.white, alignment: Alignment.centerLeft, child: const Text("xin chào")),
          ),

          // Background là Image
          Container(
              margin: EdgeInsets.all(10),
              height: 100,
              width: 100,
              // color: Colors.amber,
              decoration: BoxDecoration(
                color: Colors.blue,
                image: const DecorationImage(
                  image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                  fit: BoxFit.cover,
                ),
                border: Border.all(
                  width: 8,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              alignment: Alignment.centerLeft,
              child: const Text("xin chào")),

          // Background color gradient  : Đổ màu cầu vồng
          Container(
              margin: EdgeInsets.all(10),
              height: 100,
              width: 100,
              // color: Colors.amber,
              decoration: const BoxDecoration(
                color: Colors.blue,
                gradient:LinearGradient(
                colors: [
                  const Color(0xFF3366FF),
                  const Color(0xFF00CCFF),
                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp
                ),
              ),
              alignment: Alignment.centerLeft,
              child: const Text("xin chào")),

          // decoration : ShapeDecoration ()
          Container(
              width: double.infinity - 200,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: Border.all(
                      color: Colors.red,
                      width: 20.0,
                    ) +
                    Border.all(
                      color: Colors.green,
                      width: 8.0,
                    ) +
                    Border.all(
                      color: Colors.blue,
                      width: 8.0,
                    ),
              ),
              child: Container(
                height: 100,
                width: double.infinity - 200,
                child: const Text(
                  'RGB',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.amber),
                ),
              )),
        ]


            ),
      ),
    );
  }
}

// Khi muốn bao 1 Container vào trong 1 Container , Phải chỉ định vị trí Container con nằm ở vị trí nào ở Container cha == alignment 
//Nếu không Container con sẽ phát triển to ra bằng Containe cha

//       Container(
//     width: 200.0,
//     height: 200.0,
//     color: Colors.orange,
//     alignment: Alignment.topLeft, // where to position the child
//     child: Container(
//       width: 50.0,
//       height: 50.0,
//       color: Colors.blue,
//       padding: EdgeInsets.all(10),
//       margin:  EdgeInsets.all(10),
//     ),
//   ),


            // ConStructor
            // Container(
            //     height: 100,
            //     width: 100
            //     margin: ,
            //     padding: ,
            //     alignment: ,
            //     child: ,
            //     color: Colors.amber, // color || decoration
            //      decoration

            //     clipBehavior: ,
            //     constraints: ,
            //     foregroundDecoration: ,
            //     transform: ,
            //     transformAlignment: ,
            //     ),

            // thuộc tính decoration phổ biến của container là BoxDecoration Có các loại hiệu ứng
            // decoration: BoxDecoration(
            //     color: Colors.blue,
            // border:
            // borderRadius:
            // image:   // background là hình ảnh
            // boxShadow:  // Đổ bóng
            // gradient:    // Đổ màu cầu vồng
            // backgroundBlendMode:
            // shape:
            // ),
