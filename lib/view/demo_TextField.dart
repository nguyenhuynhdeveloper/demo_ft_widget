import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DemoTextField extends StatefulWidget {
  const DemoTextField({Key? key}) : super(key: key);

  @override
  State<DemoTextField> createState() => _DemoTextFieldState();
}

class _DemoTextFieldState extends State<DemoTextField> {
  String _email = ''; // Đây chính là state: thay đổi nội tại bên trong myApp
  final emailEditingController = TextEditingController(); // Để nhận sự thay đổi khi gõ vào
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
                controller: emailEditingController, // Nói rằng khối điều khiển cái này là emailEditingController
                onChanged: (text) {
                  setState(() {
                    _email = text;
                  });
                },
                decoration:
                    const InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                       labelText: 'Enter your name',
                       hintText: "Nhập email của bạn"
                       ),
              ))),
            ),

            Text(
              _email,
              style: const TextStyle(fontSize: 20, color: Colors.red),
            ),
            Container(
                margin: EdgeInsets.only(top: 100),
                height: 100,
                color: Colors.amber,
                child: InkWell(
                  child: Text("Bấm để xoá ô nhập dữ liệu "),
                  onTap: () {
                    setState(() {         // setState là để 
                    emailEditingController.text = '';
                    _email = "";
                    });
                  },
                ))
          ],
        ),
      ),
    );
  }
}
