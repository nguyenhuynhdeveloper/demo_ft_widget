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
        child: SingleChildScrollView(
          child: Column(children: [
            //// Ví dụ về padding : Đẩy nội  dung bên trong cách cái viền thôi
            // // margin : đẩy cái container này cách những thằng xung quanh nó

            // Khi muốn bao 1 Container vào trong 1 Container , Phải chỉ định vị trí Container con nằm ở vị trí nào ở Container cha == alignment
            //Nếu không Container con sẽ phát triển to ra bằng Containe cha

            Container(
              width: 200.0,
              height: 200.0,
              color: Colors.orange,
              alignment: Alignment.topLeft, // where to position the child
              child: Container(
                width: 50.0,
                height: 50.0,
                color: Colors.blue,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
              ),
            ),

            Container(
              // Cách ra các hướng
              // margin: EdgeInsets.all(20),   : Các property của EdgeInsets
              // margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              // margin: EdgeInsets.fromLTRB(5, 10, 15, 20),
              margin: EdgeInsets.only(left: 30, top: 30, right: 30, bottom: 30),
              padding: EdgeInsets.symmetric(
                  vertical: 30,
                  horizontal:
                      80), // Padding là phần ruột cách viền các khoảng cách

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
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),

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

              child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.white,
                  alignment: Alignment.centerLeft,
                  child: const Text("xin chào")),
            ),

            // Background là Image
            // Sử dụng image của class BoxDecoration (trong thuộc tính decoration của Container )
            Container(
                margin: EdgeInsets.all(10),
                height: 100,
                width: 100,
                // color: Colors.amber,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  image: const DecorationImage(
                    image: NetworkImage(
                        'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
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
            // Sử dụng gradient của class BoxDecoration (trong thuộc tính decoration của Container )
            Container(
                margin: EdgeInsets.all(10),
                height: 100,
                width: 100,
                // color: Colors.amber,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  gradient: LinearGradient(
                      colors: [
                        const Color(0xFF3366FF),
                        const Color(0xFF00CCFF),
                      ],
                      begin: const FractionalOffset(0.0, 0.0),
                      end: const FractionalOffset(1.0, 0.0),
                      stops: [0.0, 1.0],
                      tileMode: TileMode.clamp),
                ),
                alignment: Alignment.centerLeft,
                child: const Text("xin chào")),

            // decoration sử dụng ShapeDecoration()
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
          ]),
        ),
      ),
    );
  }
}

//------------------------

//  Container({
//   Key? key,
//   double? height,
//   double? width,
//   Color? color,    // Quy định backgroundColor cho container   //  color: Colors.amber, // color || decorations

//   Widget? child,
//   Decoration? decoration,   // Thuộc tính trang trí container

//   EdgeInsetsGeometry? padding,
//   EdgeInsetsGeometry? margin,
//   AlignmentGeometry? alignment,  // Quy định vị trí của thằng con so với thằng cha Aligment === AlignmentDirectional === FractionalOffet

//   Decoration? foregroundDecoration,
//   BoxConstraints? constraints,     // Quy định kích thước lớn nhất nhỏ nhất của container, nếu child to hơn sẽ bị cắt
//   Matrix4? transform,
//   AlignmentGeometry? transformAlignment,
//   Clip clipBehavior = Clip.none,
// })

// ----
/**



Nếu không có Child + không có quy định height, width : thì container sẽ chiếm hết diện tích màn hình 
Nếu có child + không có quy định height, width: thì container sẽ to đúng bằng diện tích của child 


#### margin padding 

Sẽ sử dụng class EdgeInsets 

margin: EdgeInsets.symmetric( // margin theo direction
  vertical: 20,
  horizontal: 30,
),
margin: EdgeInsets.fromLTRB(left, top, right, bottom) // margin cả 4 biên với giá trị chỉ định
padding: EdgeInsets.all(20), // padding tất cả các biên
padding: EdgeInsets.only(left: 20) // padding biên chỉ định



####  Các class có thể dùng làm giá trị của aligment là:

Aligment sử dụng hệ tọa độ với điểm gốc (0, 0) là center của container
AlignmentDirectional sử dụng hệ tọa độ với điểm gốc (0, 0) là center của container, tuy nhiên phụ thuộc vàochiều viết, ví dụ ltr thì start ở bên trái và end bên phải, rtl thì start ở bên phải và end ở bên trái
FractionalOffset sử dụng hệ tọa độ với điểm gốc (0, 0) là top left của container


Aligment
Bạn có thể tạo mới Aligment với giá trị x, y mong muốn hoặc sử dụng các hằng số có sẵn.

      child: Container(
        color: Colors.green,
        child: Text(
          'Hello container',
          textDirection: TextDirection.ltr,
        ),
        alignment: Alignment(-1, -1),
      )


      child: Container(
        color: Colors.green,
        child: Text(
          'Hello container',
          textDirection: TextDirection.ltr,
        ),
        alignment: Alignment.centerLeft,
      )



AlignmentDirectional
Tương tự aligment chúng ta cũng có 2 cách là tạo mới AlignmentDirectional với giá trị x, y mong muốn hoặc sử dụng các hằng số có sẵn.
Trục Y vẫn là Trên -1. dưới 1 

      child: Container(
        color: Colors.green,
        child: Text(
          'Hello container',
          textDirection: TextDirection.ltr,
        ),
        alignment: AlignmentDirectional(-1, -1).resolve(TextDirection.ltr),
      )

      child: Container(
        color: Colors.green,
        child: Text(
          'Hello container',
          textDirection: TextDirection.ltr,
        ),
        alignment: AlignmentDirectional.centerStart.resolve(TextDirection.ltr),
      )

FractionalOffset
Tương tự aligment chúng ta cũng có 2 cách là tạo mới FractionalOffset với giá trị x, y mong muốn hoặc sử dụng các hằng số có sẵn.
Trục X : Trái -> phải :  0 -> 1
Trục Y: Trên-> dưới: 0 -> 1
      child: Container(
        color: Colors.green,
        child: Text(
          'Hello container',
          textDirection: TextDirection.ltr,
        ),
        alignment: FractionalOffset(0.5, 0),
      )

      child: Container(
        color: Colors.green,
        child: Text(
          'Hello container',
          textDirection: TextDirection.ltr,
        ),
        alignment: FractionalOffset.bottomCenter,
      )



      #### constraints : Định nghĩa ràng buộc về kích thước của Container , thông thường sủw dụng BoxConstraints

      Như phần trên chúng ta đã nói thì khi không có child thì container sẽ có kích thước lớn nhất có thể, tuy nhiên khi thêm thuộc tính maxHeight và maxWidth thì nó sẽ bị giới hạn lại.

      child: Container(
        color: Colors.green,
        alignment: AlignmentDirectional.centerStart.resolve(TextDirection.ltr),
        constraints: BoxConstraints(
          maxHeight: 400,
          maxWidth: 300,
        ),


        ##### decoration -> child -> foregroundDecoration : Theo đúng thứ tự từ dưới lên trên 

        Thông thường sẽ sử dụng BoxDecoration 

      ////////// BoxDecoration
      // thuộc tính decoration phổ biến của container là BoxDecoration Có các loại hiệu ứng
      // decoration: BoxDecoration(
      // border:
      // borderRadius:
      // boxShadow:  // Đổ bóng

      // color: Colors.blue,
      // gradient:    // Đổ màu cầu vồng

      // image:   // background là hình ảnh nằm trên color 
      // backgroundBlendMode:
      // shape:
      // ),


      ###### Transform 
      Sử dụng thuộc tính này để thực hiện chuyển đổi container, truyền vào là Matrix class

      child: Container(
        width: 200,
        height: 300,
        decoration: BoxDecoration(
            color: Colors.blue,
        ),
        transform: Matrix4.rotationX(pi/4),
      )

 */

//----------------------------
