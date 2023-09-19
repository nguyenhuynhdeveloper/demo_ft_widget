import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class TinCoderMainView extends StatefulWidget {
  const TinCoderMainView({Key? key}) : super(key: key);

  @override
  State<TinCoderMainView> createState() => _TinCoderMainViewState();
}

class _TinCoderMainViewState extends State<TinCoderMainView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Để tắt Banner debug đi
      theme: ThemeData(
          // fontFamily: Fonts.SFPro
          // fontFamily: Fonts.regular
          brightness: Brightness.light, // Chỉnh dark : light/ dard
          primaryColor: Colors
              .blueGrey), // Để có thể dùng themColor, hay font chữ thay đổi cho toàn app cho toàn App
      home: (TinCoderView()), //  Nhận vào 1 màn hình cố định

      // routes: routes,  // Nhận 1 danh sách các màn hình
      // initialRoute: '/',   // Màn hình mặc định được lên đầu tiên
    );
  }
}

class TinCoderView extends StatefulWidget {
  const TinCoderView({Key? key}) : super(key: key);

  @override
  State<TinCoderView> createState() => _TinCoderViewState();
}

class _TinCoderViewState extends State<TinCoderView> {
    List<String> listItem = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'k', 'j', 'l', 'm', 'n', 's', 'z', 'x'];
  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // var listItem;
    return Scaffold(
        // appBar: AppBar(),
        body: SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        // color: Colors.yellow,
        decoration: const BoxDecoration(
          gradient: const LinearGradient(
            // Where the linear gradient begins and ends
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            // Add one stop for each color. Stops should increase from 0 to 1
            stops: [0.1, 0.5, 0.7, 0.9],
            colors: [
              // Colors are easy thanks to Flutter's Colors class.
              Color.fromARGB(255, 6, 165, 245),
              Color.fromARGB(255, 66, 15, 245),
              Color.fromARGB(255, 66, 165, 25),
              Color.fromARGB(255, 66, 15, 245),
            ],
          ),
        ),

        child: Column(children: [
          Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                  // color: Colors.yellow,
                  ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          // color: Colors.red,

                          // shape : BoxShape.circle,
                          //           border: Border.all(
                          //   width: 8,
                          // ),
                          // borderRadius: BorderRadius.circular(12),

                          ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(33.0),
                        child: Image.asset(
                          'assets/images/car.jpeg',
                          fit: BoxFit.fill,
                        ),
                      )),
                  Container(
                      child: Text('Tofu\'s songs',
                          style: TextStyle(fontSize: 15))),
                  Container(
                      child: IconButton(
                    icon: Icon(Icons.one_k_plus),
                    onPressed: () {},
                  ))
                ],
              )),
          Container(
            height: 40,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            width: double.infinity - 80,
            decoration: BoxDecoration(
                // border: Border.all(width: 1),
                borderRadius: BorderRadius.circular(20),
                color: Colors.black12),
            child: Row(children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    // Toggle light when tapped.
                    // _lightIsOn = !_lightIsOn;
                  });
                },
                child: Container(
                  // color: Colors.yellow.shade600,
                  padding: const EdgeInsets.all(8),
                  // Change button text when light changes state.
                  child: Text('Shared'),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    // Toggle light when tapped.
                    // _lightIsOn = !_lightIsOn;
                  });
                },
                child: Container(
                  // color: Colors.yellow.shade600,
                  padding: const EdgeInsets.all(8),
                  // Change button text when light changes state.
                  child: Text('Feed'),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    // Toggle light when tapped.
                    // _lightIsOn = !_lightIsOn;
                  });
                },
                child: Container(
                  // color: Colors.yellow.shade600,
                  padding: const EdgeInsets.all(8),
                  // Change button text when light changes state.
                  child: Text('My Music'),
                ),
              ),
            ]),
          ),
          SizedBox(height: 40, width: double.infinity),


          Container(
            height: 500,
            // color: Colors.yellow,
            child: ListView.builder(
              shrinkWrap: true,
              physics:  ScrollPhysics(),
              itemCount: listItem.length,
              itemBuilder: ((context, index) => ItemBuilder(listItem[index])),
            ),
          ),

    //  Expanded(
    //     child: 
        //  SingleChildScrollView(
              // child: 
              // ConstrainedBox(
              //   constraints: BoxConstraints(
              //     minHeight: 400,
              //   ),
          //       child: ListView.builder(
          //                 itemCount: listItem.length,
          //                 itemBuilder: ((context, index) => ItemBuilder(listItem[index])),
          //               ),
          //     // )
          // ),
    //  ),

    // Container(
    //   height: 500,
      // child:
      //  SingleChildScrollView(
      //     physics: ScrollPhysics(),
      //     child: Column(
      //       children: <Widget>[
      //          Text('Hey'),
      //          ListView.builder(
      //             // physics: NeverScrollableScrollPhysics(),
      //             shrinkWrap: true,
      //             itemCount:listItem.length,
      //             itemBuilder: (context,index){
      //               return   ItemBuilder(listItem[index]);
      //             })
      //       ],
      //     ),
      //   ),
    // ),


        ]),
      ),
    ));
  }
}

Widget ItemBuilder(item) {
  return Container(
      height: 80,
      width: double.infinity,
      //  color: Colors.red,
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
            child: Row(children: [
          Container(
              height: 60,
              width: 60,
              decoration: const BoxDecoration(
                  // color: Colors.red,

                  // shape : BoxShape.circle,
                  //           border: Border.all(
                  //   width: 8,
                  // ),
                  // borderRadius: BorderRadius.circular(12),

                  ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(33.0),
                child: Image.asset(
                  'assets/images/car.jpeg',
                  fit: BoxFit.fill,
                ),
              )),
          Column(children: const [
            Text('Trapadelic lobo'),
            Text('lillobobeats'),
          ])
        ])),
        Container(
            alignment: Alignment.center,
            // height: 80,

            color: Colors.yellow,
            child:
                Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
              Icon(Icons.audiotrack),
              Column(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Theo chiều ngang
                  children: [Icon(Icons.favorite), Text('4')])
            ]))
      ]));
}
