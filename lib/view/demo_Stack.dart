import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DemoStack extends StatefulWidget {
  const DemoStack({Key? key}) : super(key: key);

  @override
  State<DemoStack> createState() => _DemoStackState();
}

class _DemoStackState extends State<DemoStack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Color.fromARGB(255, 70, 147, 77),


          child: Stack(
            // Stack là widget cho phép các widget bên trong chồng đè nên nhau , cái viết trước thì nằm ở dưới, --> cái viết đầu tiên thì ở dưới cùng
            alignment: AlignmentDirectional.topStart,
            textDirection: TextDirection.ltr,
            fit: StackFit.loose,
            clipBehavior: Clip.hardEdge,

            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.yellow,

                padding: EdgeInsets.all(40),
                // margin: EdgeInsets.all(40),  // Đây vẫn là margin so với cách widget ngoài Stack
                child: Text("xin chào"),
              ),


               // Cái widget đầu tiên lúc nào cũng là cái widget nền
              Positioned(top: 10, left: 10, child: Container(height: 50, width: 50, color: Colors.blue)), // Positioned : Quyết định vị trí của nó so với Stack : So với thằng widget đầu tiên
              Positioned(top: 20, left: 20, child: Container(height: 50, width: 50, color: Colors.red)),
              Text("xin chào"),
            ],
          )),
    );
  }
}

//Stack Stack({
//   Key? key,
//   AlignmentGeometry alignment = AlignmentDirectional.topStart,
//   TextDirection? textDirection,
//   StackFit fit = StackFit.loose,
//   Clip clipBehavior = Clip.hardEdge,
//   List<Widget> children = const <Widget>[],
// })

// Positioned Positioned({
//   Key? key,
//   double? left,
//   double? top,
//   double? right,
//   double? bottom,
//   double? width,
//   double? height,
//   required Widget child,
// })
