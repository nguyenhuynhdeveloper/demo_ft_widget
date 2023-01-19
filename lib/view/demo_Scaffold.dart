import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DemoScaffold extends StatefulWidget {
  const DemoScaffold({Key? key}) : super(key: key);

  @override
  State<DemoScaffold> createState() => _DemoScaffoldState();
}

class _DemoScaffoldState extends State<DemoScaffold> {
  List<String> titles = <String>[
    'Cloud',
    'Beach',
    'Sunny',
  ];

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color oddItemColor = colorScheme.primary.withOpacity(0.05);
    final Color evenItemColor = colorScheme.primary.withOpacity(0.15);
    const int tabsCount = 3;
    //Scaffold là full đầy đủ giao diện 1 màn hình : appbar, body , bottomNavigationBar, floatingActionButon , floatingActionButtonLocation "Vị trí của floattingActionButton"
    return DefaultTabController(
      initialIndex: 1,
      length: tabsCount,
      child: (Scaffold(
          // backgroundColor: Colors.blue,  //Màu của toàn màn hình Scaffold  : ưu tiên cao nhất phủ lên tất cả

          //-----------appBar : Phần trên của màn hình
          appBar: AppBar(
            backgroundColor: Color.fromARGB(0, 60, 38, 38), // Màu của appBar
            foregroundColor: Colors.green, // Màu của title và action

            elevation: 1, // Cao độ của AppBar

            leading:IconButton(icon: Icon(Icons.arrow_back), onPressed: () {  },),
            //  Container(
            //   height: 20,
            //   width: 20,
            //   color: Colors.blue,
            // ), // Bên trái của AppBar

            title: const Text("demo Scafold"), // Tên của màn hình ở giữa Appbar
            centerTitle: true,

            //Bên phải AppBar
            // actions: [Container(height: 10, width: 50, color: Colors.amber), Container(height: 10, width: 10, color: Colors.amber)],
            actions: [
              // action là 1 mản các icon mà có thể bấm vào thực hiện chức năng gì đó
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
              ),
              IconButton(
                icon: const Icon(Icons.add_alert),
                tooltip: 'Show Snackbar',
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('This is a snackbar')));
                },
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.login),
              ),
            ],

            scrolledUnderElevation: 4.0,
            shadowColor: Theme.of(context).shadowColor,

            //-----Phần dưới của AppBar
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  icon: const Icon(Icons.cloud_outlined),
                  // text: titles[0],     // Text hoặc child : chỉ được phép dùng 1 trong 2
                  child: Container(
                    height: 10,
                    width: 10,
                    color: Colors.amber,
                  ),
                ),
                Tab(
                  icon: const Icon(Icons.beach_access_sharp),
                  text: titles[1],
                ),
                Tab(
                  icon: const Icon(Icons.brightness_5_sharp),
                  text: titles[2],
                ),
              ],
            ),
          ),

          //----------- body: ruột nội dung của màn hình
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ListTile(   // Thực ra 1 widget để vẽ ra 1 dòng : Mà có thể ấn vào 
                    leading: Icon(Icons.add_card),   // Đầu dòng 
                    title: Text('Demo Container'),   // Cuối dòng
                    onTap: () {
                      Navigator.pushNamed(context, "/Container"); // Chuyển sang màn hình DemoContainer
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.add_card),
                    title: Text('Demo Image'),
                    onTap: () {
                      Navigator.pushNamed(context, "/Image"); // Chuyển sang màn hình DemoImage
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.add_card),
                    title: Text('Demo Column'),
                    onTap: () {
                      Navigator.pushNamed(context, "/Column"); // Chuyển sang màn hình DemoImage
                    },
                  ),
            
                  ListTile(
                    leading: Icon(Icons.add_card),
                    title: Text('Demo Row'),
                      onTap: () {
                      Navigator.pushNamed(context, "/Row"); // Chuyển sang màn hình DemoImage
                    },
                  ),
            
                     ListTile(
                    leading: Icon(Icons.add_card),
                    title: Text('Demo Stack'),
                      onTap: () {
                      Navigator.pushNamed(context, "/Stack"); // Chuyển sang màn hình DemoImage
                    },
                  ),
            
                     ListTile(
                    leading: Icon(Icons.add_card),
                    title: Text('Demo ListView'),
                      onTap: () {
                      Navigator.pushNamed(context, "/ListView"); // Chuyển sang màn hình DemoImage
                    },
                  ),
            
                     ListTile(
                    leading: Icon(Icons.add_card),
                    title: Text('Demo TextField'),
                      onTap: () {
                      Navigator.pushNamed(context, "/TextField"); // Chuyển sang màn hình DemoImage
                    },
                  ),
            
                       ListTile(
                    leading: Icon(Icons.add_card),
                    title: Text('Demo GestureDetector'),
                      onTap: () {
                      Navigator.pushNamed(context, "/GestureDetector"); // Chuyển sang màn hình DemoImage
                    },
                  ),
                            ListTile(
                    leading: Icon(Icons.add_card),
                    title: Text('Demo BottomAppBar'),
                      onTap: () {
                      Navigator.pushNamed(context, "/BottomAppBar"); // Chuyển sang màn hình DemoImage
                    },
                  ),
                     ListTile(
                    leading: Icon(Icons.add_card),
                    title: Text('Demo AlertDialog'),
                      onTap: () {
                      Navigator.pushNamed(context, "/AlertDialog"); // Chuyển sang màn hình DemoImage
                    },
                  ),

            ListTile(
                    leading: Icon(Icons.add_card),
                    title: Text('Demo showModalBottomSheet'),
                      onTap: () {
                      Navigator.pushNamed(context, "/showModalBottomSheet"); // Chuyển sang màn hình DemoImage
                    },
                  ),  

                    ListTile(
                    leading: Icon(Icons.add_card),
                    title: Text('Demo DropDownButton2'),
                      onTap: () {
                      Navigator.pushNamed(context, "/DropDownButton2"); // Chuyển sang màn hình DropDownButton2
                    },
                  ),
                  
                ],
              ),
            ),
          ),

          //--------BottomAppBar
          bottomNavigationBar: BottomAppBar(
            color: Colors.amber,
            shape: const CircularNotchedRectangle(), //Phần notch được tạo cho FloatingActionButton : Bo tròn né FloatingActionButton

            clipBehavior: Clip.hardEdge, // Nội dung sẽ được cắt bớt (hoặc không) theo tùy chọn này.

            // child  : Có thể vẽ bất kỳ widget nào đây để hiển thị cho BottomAppBar : Không bị giới hạn như BottomNavigationBar
            // child: IconTheme(
            //   data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
            //   child: Row(
            //     children: <Widget>[
            //       Expanded(
            //         child: IconButton(
            //           tooltip: 'Open navigation menu',
            //           icon: const Icon(Icons.menu),
            //           onPressed: () {},
            //         ),
            //       ),
            //       Expanded(
            //         child: IconButton(
            //           tooltip: 'Search',
            //           icon: const Icon(Icons.search),
            //           onPressed: () {},
            //         ),
            //       ),
            //       Spacer(),
            //       Expanded(
            //         child: IconButton(
            //           tooltip: 'Search',
            //           icon: const Icon(Icons.search),
            //           onPressed: () {},
            //         ),
            //       ),
            //       // Spacer(),
            //       Expanded(
            //         child: IconButton(
            //           tooltip: 'Favorite',
            //           icon: const Icon(Icons.favorite),
            //           onPressed: () {},
            //         ),
            //       ),
            //     ],
            //   ),
            // ),

            child: Row(
              children: <Widget>[
                IconButton(
                  tooltip: 'Open popup menu',
                  icon: const Icon(Icons.more_vert),
                  onPressed: () {
                    final SnackBar snackBar = SnackBar(
                      content: const Text('Yay! A SnackBar!'),
                      action: SnackBarAction(
                        label: 'Undo',
                        onPressed: () {},
                      ),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                ),
                IconButton(
                  tooltip: 'Search',
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                ),
                Spacer(),
                IconButton(
                  tooltip: 'Favorite',
                  icon: const Icon(Icons.favorite),
                  onPressed: () {},
                ),
                IconButton(
                  tooltip: 'Open navigation menu',
                  icon: const Icon(Icons.menu),
                  onPressed: () {},
                ),
              ],
            ),
          ),

          //--------FloatingActionButton : Nut ấn nổi lên trên màn hình
          floatingActionButton: FloatingActionButton(
            onPressed: () => setState(() {
              // _count++;
            }),
            tooltip: 'Increment Counter',
            child: const Icon(Icons.add),
          ),

          // Quyết định vị trí của floatingActionButton
          // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat  // ở giữa phía trên BottomBarApp
          // floatingActionButtonLocation: FloatingActionButtonLocation.centerTop     // Ở giư trên - dưới AppBar
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked // Ở giữa nằm đè phía trên BottomBarApp

          )),
    );
  }
}
