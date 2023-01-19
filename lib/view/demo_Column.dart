import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DemoColumn extends StatefulWidget {
  const DemoColumn({Key? key}) : super(key: key);

  @override
  State<DemoColumn> createState() => _DemoColumnState();
}

class _DemoColumnState extends State<DemoColumn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(height: 40,color:Colors.pink),
          Container(
            width: 400,
            height: 200,
            color: Colors.green[50],


            child: SingleChildScrollView(   // Không bao khung . chỉ bao ruột mà  thò ra ấy 
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,   // Theo chiều đứng
                crossAxisAlignment: CrossAxisAlignment.center, // Hướng chiều ngang   // Bắt buộc phải khai báo width cho widget cha
              
                mainAxisSize: MainAxisSize.min,
                // textDirection: TextDirection.rtl,
                      
                children: [
                Container(height: 40, width: 40, color: Colors.red, margin:  EdgeInsets.symmetric(vertical: 5)),
                Container(height: 40, width: 40, color: Colors.amber, margin:  EdgeInsets.symmetric(vertical: 5)),
                Container(height: 40, width: 40, color: Colors.blue, margin:  EdgeInsets.symmetric(vertical: 5)),
                Container(height: 40, width: 40, color: Colors.amber, margin:  EdgeInsets.symmetric(vertical: 5)),
                Container(height: 40, width: 40, color: Colors.amber, margin:  EdgeInsets.symmetric(vertical: 5)),   Container(height: 40, width: 40, color: Colors.red, margin:  EdgeInsets.symmetric(vertical: 5)),
                Container(height: 40, width: 40, color: Colors.amber, margin:  EdgeInsets.symmetric(vertical: 5)),
                Container(height: 40, width: 40, color: Colors.blue, margin:  EdgeInsets.symmetric(vertical: 5)),
                Container(height: 40, width: 40, color: Colors.amber, margin:  EdgeInsets.symmetric(vertical: 5)),
                Container(height: 40, width: 40, color: Colors.amber, margin:  EdgeInsets.symmetric(vertical: 5)),
                   Container(height: 40, width: 40, color: Colors.red, margin:  EdgeInsets.symmetric(vertical: 5)),
                Container(height: 40, width: 40, color: Colors.amber, margin:  EdgeInsets.symmetric(vertical: 5)),
                Container(height: 40, width: 40, color: Colors.blue, margin:  EdgeInsets.symmetric(vertical: 5)),
                Container(height: 40, width: 40, color: Colors.amber, margin:  EdgeInsets.symmetric(vertical: 5)),
                Container(height: 40, width: 40, color: Colors.amber, margin:  EdgeInsets.symmetric(vertical: 5)),   Container(height: 40, width: 40, color: Colors.red, margin:  EdgeInsets.symmetric(vertical: 5)),
                Container(height: 40, width: 40, color: Colors.amber, margin:  EdgeInsets.symmetric(vertical: 5)),
                Container(height: 40, width: 40, color: Colors.blue, margin:  EdgeInsets.symmetric(vertical: 5)),
                Container(height: 40, width: 40, color: Colors.amber, margin:  EdgeInsets.symmetric(vertical: 5)),
                Container(height: 40, width: 40, color: Colors.amber, margin:  EdgeInsets.symmetric(vertical: 5)),
              ]),
            ),


          ),
        ],
      ),
    );
  }
}

// Sắp xếp các children bên trong nó theo đường dọc 
// Column Column({
//   Key? key,
//   MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
//   MainAxisSize mainAxisSize = MainAxisSize.max,
//   CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,


//   TextDirection? textDirection,
//   VerticalDirection verticalDirection = VerticalDirection.down,
//   TextBaseline? textBaseline,
//   List<Widget> children = const <Widget>[],
// })


// 1 màn hình kích thước bình thường tầm 480 / dọc 800