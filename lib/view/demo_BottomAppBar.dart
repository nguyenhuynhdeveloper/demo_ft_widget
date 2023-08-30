import 'package:demo_ft_widget/view/demo_Column.dart';
import 'package:demo_ft_widget/view/demo_Container.dart';
import 'package:demo_ft_widget/view/demo_Row.dart';
import 'package:demo_ft_widget/view/demo_Scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DemoBotomAppBar extends StatefulWidget {
  const DemoBotomAppBar({Key? key}) : super(key: key);

  @override
  State<DemoBotomAppBar> createState() => _DemoBotomAppBarState();
}

class _DemoBotomAppBarState extends State<DemoBotomAppBar> {
  int selectedIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BottomAppBar cố định toàn App"),
      ),
      body: getBody(selectedIndex),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: <Widget>[
            IconButton(
              tooltip: 'Open navigation menu',
              icon: const Icon(Icons.menu),
              onPressed: () {
                setState(() {
                  selectedIndex = 1;
                });
              },
            ),
            const Spacer(),
            IconButton(
              tooltip: 'Search',
              icon: const Icon(Icons.search),
              onPressed: () {  setState(() {
                  selectedIndex = 2;
                });},
            ),
            IconButton(
              tooltip: 'Favorite',
              icon: const Icon(Icons.favorite),
              onPressed: () {  setState(() {
                  selectedIndex = 3;
                });},
            ),
          ],
        ),
      ),
    );
  }
}

Widget getBody(int selectedIndex) {
  switch (selectedIndex) {
    case 1:
      return DemoScaffold();  // Trở lại màn hình gốc
      break;
    case 2:
      return DemoRow();
      break;
       case 2:
      return DemoContainer();
      break;
    default:
      return DemoColumn();
  }
}
