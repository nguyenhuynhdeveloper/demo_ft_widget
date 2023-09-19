import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DemoTextField extends StatefulWidget {
  const DemoTextField({Key? key}) : super(key: key);

  @override
  State<DemoTextField> createState() =>
      _DemoTextFieldState(); // Khi khai báo biến _abc: thì biến này là private : Biến không công khai
}

class _DemoTextFieldState extends State<DemoTextField> {
  String email = ''; // Đây chính là state: thay đổi nội tại bên trong myApp
  String email2 = 'abc';
  bool isOn = false;

  final emailEditingController =
      TextEditingController(); // Để nhận sự thay đổi khi gõ vào // Textfield : ô nhập liệu để ng dùng nhập dữ liệu vào , mỗi 1 ô text field , thì nó sẽ cần 1 controler: bộ điều khiển
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: 500,
        child: Column(
          children: [
            Container(
              height: 100,
              width: double.infinity,
              child: Center(
                  child: (TextField(
                controller:
                    emailEditingController, // Nói rằng khối điều khiển cái này là emailEditingController
                onChanged: (t) {
                  // t : là nhữngh cái gì mà ng dùng nó ghi vào
                  setState(() {
                    // nó là cách quản lý state nguyên thuỷ của flutter : giống < get x, bloc : chức năng của nó chỉ có là thay đổi state thôi
                    email = t;
                    email2 = t + "ghj";
                    print(t);
                  });
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    labelText: 'Enter your name',
                    hintText: "Nhập email của bạn"),
              ))),
            ),
            Text(
              email,
              style: const TextStyle(fontSize: 20, color: Colors.red),
            ),
            Text(
              isOn ? email2 : "isOn đang là false nên tao được hiện",
              style: const TextStyle(fontSize: 20, color: Colors.red),
            ),
            Container(
                margin: EdgeInsets.only(top: 100),
                height: 100,
                color: isOn == true ? Colors.amber : Colors.red,
                child: InkWell(
                  child: Text("Bấm để xoá ô nhập dữ liệu "),
                  onTap: () {
                    setState(() {
                      // setState là để
                      email = ""; // Đưa state đó nhận giá trị chuỗi rỗng
                      emailEditingController.text = 'Đưa về 1 giá trị mặc định';
                    });
                  },
                )),
            GestureDetector(
              onTap: () => {
                setState(() {
                  isOn = !isOn;
                }),
                print("vừa bấm vào GestureDetector")
              },
              child: Container(child: const Text('tắt bật')),
            )
          ],
        ),
      ),
    );
  }
}

// statefulWidget : chỉ đơn giản là widget có chứa state
// state: có trạng thái có thể thay dổi đk , thai đổi này từ người dùng mà ra , nhập dữ liệu , ng bấm nút: phải có 1 cái biến - state gì đấy để mà bắt lấy chuyện đấy
// màn hình cài dặt: dark, light , bật bắt âm ,

// stateLessWidget : là widget không chứa state : lúc nào nó cũng cố định như vậy thôi : điều khảon sử dụng, chính sách bảo hành : ng dùng chỉ vào xem không làm gì

// // Cái này chỉ đơn thuần là vẽ view , hiển thị lên thôi
// class MyWidget extends StatelessWidget {
//   const MyWidget({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {

//   }
// }

// // widget mà có state thay đổi
// class MyWidget extends StatefulWidget {
//   const MyWidget({Key? key}) : super(key: key);

//   @override
//   State<MyWidget> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return (Container())
//   }
// }

// // Khi mà đã sử dụng get x rồi, thì không care, không chia thằng nào có hay không
