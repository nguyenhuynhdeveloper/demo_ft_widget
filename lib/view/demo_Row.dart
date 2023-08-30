import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DemoRow extends StatefulWidget {
  const DemoRow({Key? key}) : super(key: key);

  @override
  State<DemoRow> createState() => _DemoRowState();
}

class _DemoRowState extends State<DemoRow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: 500,
        width: 400,
        color: Colors.green[50],

        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
         
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,   // Theo chiều ngang
            // crossAxisAlignment: CrossAxisAlignment.start, // Hướng chiều Đứng   // Bắt buộc phải khai báo height cho widget cha
            
            
            // mainAxisSize: MainAxisSize.min,
            // textDirection: TextDirection.rtl,
              
            children: [
            Container(height: 40, width: 40, color: Colors.red, margin:  EdgeInsets.symmetric(vertical: 5, horizontal: 5)),
            Container(height: 40, width: 40, color: Colors.amber, margin:  EdgeInsets.symmetric(vertical: 5, horizontal: 5)),
            Container(height: 40, width: 40, color: Colors.blue, margin:  EdgeInsets.symmetric(vertical: 5, horizontal: 5)),
            Container(height: 40, width: 40, color: Colors.amber, margin:  EdgeInsets.symmetric(vertical: 5, horizontal: 5)),
            Container(height: 40, width: 40, color: Colors.amber, margin:  EdgeInsets.symmetric(vertical: 5, horizontal: 5)),

            Container(height: 80, width:  80 , color: Colors.pink,
            child: Center(child: Container(
              margin: EdgeInsets.only(top: 20),
              height: 30,width: 30, color: Colors.black,)),),


            Container(height: 40, width: 40, color: Colors.red, margin:  EdgeInsets.symmetric(vertical: 5, horizontal: 5)),
            Container(height: 40, width: 40, color: Colors.amber, margin:  EdgeInsets.symmetric(vertical: 5, horizontal: 5)),
            Container(height: 40, width: 40, color: Colors.blue, margin:  EdgeInsets.symmetric(vertical: 5, horizontal: 5)),
            Container(height: 40, width: 40, color: Colors.amber, margin:  EdgeInsets.symmetric(vertical: 5, horizontal: 5)),
            Container(height: 40, width: 40, color: Colors.amber, margin:  EdgeInsets.symmetric(vertical: 5, horizontal: 5)),
                        Container(height: 40, width: 40, color: Colors.red, margin:  EdgeInsets.symmetric(vertical: 5, horizontal: 5)),
            Container(height: 40, width: 40, color: Colors.amber, margin:  EdgeInsets.symmetric(vertical: 5, horizontal: 5)),
            Container(height: 40, width: 40, color: Colors.blue, margin:  EdgeInsets.symmetric(vertical: 5, horizontal: 5)),
            Container(height: 40, width: 40, color: Colors.amber, margin:  EdgeInsets.symmetric(vertical: 5, horizontal: 5)),
            Container(height: 40, width: 40, color: Colors.amber, margin:  EdgeInsets.symmetric(vertical: 5, horizontal: 5)),
                        Container(height: 40, width: 40, color: Colors.red, margin:  EdgeInsets.symmetric(vertical: 5, horizontal: 5)),
            Container(height: 40, width: 40, color: Colors.amber, margin:  EdgeInsets.symmetric(vertical: 5, horizontal: 5)),
            Container(height: 40, width: 40, color: Colors.blue, margin:  EdgeInsets.symmetric(vertical: 5, horizontal: 5)),
            Container(height: 40, width: 40, color: Colors.amber, margin:  EdgeInsets.symmetric(vertical: 5, horizontal: 5)),
            Container(height: 40, width: 40, color: Colors.amber, margin:  EdgeInsets.symmetric(vertical: 5, horizontal: 5)),



          ]),
        ),
      ),
    );
  }
}



// Row({
//   Key? key,
//   MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
//   CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
//   List<Widget> children = const <Widget>[],

//   MainAxisSize mainAxisSize = MainAxisSize.max,
//   TextDirection? textDirection,
//   VerticalDirection verticalDirection = VerticalDirection.down,
//   TextBaseline? textBaseline,
// })


//  Center({
//   Key? key,
//   double? widthFactor,
//   double? heightFactor,
//   Widget? child,
// })