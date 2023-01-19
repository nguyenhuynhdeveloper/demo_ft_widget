import 'package:demo_ft_widget/navigate/pushNamed/screen_pushNamed.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DemoScreen extends StatefulWidget {
  const DemoScreen({Key? key}) : super(key: key);

  @override
  State<DemoScreen> createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            child: Column(children: [
          Container(
              height: 50,
              color: Colors.green[50],
              child: Row(children: [
                Container(
                  margin: EdgeInsets.only(left: 20, top: 10),
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.green,
                    size: 30.0,
                  ),
                ),

                Container(
                  width: 300,
                   child: Center(
                    child: Text(
                  style: TextStyle(color: Colors.amber, fontSize: 30, fontWeight: FontWeight.w900),
                  "Nhóm được mời"))) // Bởi vì chưa set height , width cho thằng cha
              ])),
          Container(
            height: 1,
            color: Colors.amber,
          ),
          Row(
            children: [
             



        ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image(
              height: 70,
              width: 70,
                          image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                        ),
        ),

        Container(child: Column(
          children: [
            Text('Mua bán có tâm'),
            Row(
              children: [
                Text("8K Fan"),
                Text("+10 bài viết mới nhất")
              ],
            )
          ],
        ),)
            ],
          )
        ])),
      ),
    );
  }
}
