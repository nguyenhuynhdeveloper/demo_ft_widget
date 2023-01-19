import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DemoListView extends StatefulWidget {
  const DemoListView({Key? key}) : super(key: key);

  @override
  State<DemoListView> createState() => _DemoListViewState();
}

class _DemoListViewState extends State<DemoListView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<String> listItem = ["a", 'b', 'c', 'd'];

    return Scaffold(
        appBar: AppBar(),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Container(
            height: 400,
            child: ListView.builder(
              itemCount: listItem.length,
              itemBuilder: ((context, index) => ItemBuilder(listItem[index])),
            ),
          ),
        ));
  }
}

Widget ItemBuilder(item) {
  return ListTile(
    leading: Text(item),
    title: Text('----item $item'),
    selectedColor: Colors.amber,
    iconColor: Colors.pink,

    textColor: Colors.blue,    // Màu của chữ 
    tileColor: Colors.green,    // Màu của background title
  );
}


//ListView.builder({
// Key? key, 
// Axis scrollDirection = Axis.vertical,
// bool reverse = false, ScrollController? 
// controller, bool? primary, 
// ScrollPhysics? physics,
// bool shrinkWrap = false,
// EdgeInsetsGeometry? padding,
// double? itemExtent,
// Widget? prototypeItem,
// required Widget Function(BuildContext, int) itemBuilder,
// int? Function(Key)? findChildIndexCallback,
// int? itemCount,
// bool addAutomaticKeepAlives = true,
// bool addRepaintBoundaries = true,
// bool addSemanticIndexes = true,
// double? cacheExtent,
// int? semanticChildCount,
// DragStartBehavior dragStartBehavior = DragStartBehavior.start,
// ScrollViewKeyboardDismissBehavior keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual,
// String? restorationId,
// Clip clipBehavior = Clip.hardEdge
// })