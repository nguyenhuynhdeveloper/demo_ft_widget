import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DemoGestureDetector extends StatefulWidget {
  const DemoGestureDetector({Key? key}) : super(key: key);

  @override
  State<DemoGestureDetector> createState() => _DemoGestureDetectorState();
}

class _DemoGestureDetectorState extends State<DemoGestureDetector> {
  @override
  Widget build(BuildContext context) {
    double _top = 10;
    double _left = 10;
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 400,
                  width: 400,
                  color: Colors.amber,
                ),
                Positioned(
                    top: _top,
                    left: _left,
                    child: GestureDetector(
                      onPanUpdate: (details) {
                        _top = max(0, _top + details.delta.dy);
                        _left = max(0, _left + details.delta.dx);
                        print("vừa bấm vào GestureDetector");

                        setState(() {});
                      },
                      child: Container(
                        height: 100,
                        width: 100,
                        color: Colors.blue,
                      ),
                    ))
              ],
            ),
              
              Stack(
                children  :[      
                   Positioned.fill(    // Điền hết diện tích của Stack
                  child:
                   Container(
                    padding: EdgeInsets.all(50),
                    // margin: EdgeInsets.all(20),


                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Color(0xFF0D47A1),
                          Color(0xFF1976D2),
                          Color(0xFF42A5F5),
                        ],
                      ),
                    ),
                  ),
                ),
                
                TextButton(
                    style: TextButton.styleFrom(
                      // foregroundColor: Colors.white,
                      padding: const EdgeInsets.all(16.0),
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () { print("vừa bấm vào TextButton");},
                    child: const Text('Gradient'),
                  ),] 
              ),
          ],
        ),
      ),
    );
  }
}

// Ví dụ như làm nút bấm thì cũng chỉ cần bao Container vẽ rất đẹp bao bởi 1 GestureDetertor là được

//GestureDetector({   // Có rất nhiều cứ chỉ có thể bắt nếu bọc 1 widget vào GestureDetector  :
//   Key? key,
//   Widget? child,
//   void Function(TapDownDetails)? onTapDown,
//   void Function(TapUpDetails)? onTapUp,
//   void Function()? onTap,
//   void Function()? onTapCancel,
//   void Function()? onSecondaryTap,
//   .
//   .
//   .

// })

