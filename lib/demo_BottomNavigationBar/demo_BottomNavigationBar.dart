//https://openplanning.net/12849/flutter-bottomnavigationbar
//BottomNavigationBar thường được đặt trong 1 Scaffold và sẽ xuất hiện ở dưới cũng của Scaffold
// Nếu muốn thoả sức sáng tạo -- custom đẹp hơn thì sử dụng BottomAppBar


import 'package:flutter/material.dart';


class DemoBottomNavigationBar extends StatelessWidget {
  const DemoBottomNavigationBar({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.amber
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],

        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
         selectedIconTheme: const IconThemeData (
      color: Colors.red,
      opacity: 1.0,
      size: 45
  ),
  unselectedIconTheme:const IconThemeData (
      color: Colors.black45,
      opacity: 0.5,
      size: 25
  ),

  selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
   unselectedLabelStyle: TextStyle(fontStyle: FontStyle.italic),
   showSelectedLabels: false,
   showUnselectedLabels: false,
     selectedFontSize: 20,
       unselectedFontSize: 15,
        backgroundColor : Colors.greenAccent,
         unselectedItemColor: Colors.cyan,
       
      ),
    );
  }
}

// items : được sủ dụng để định nghĩa danh sách các item của BottomNavigationBar , Property này là bắt buộc và số lượng phải lớn hơn hoặc = 2
// onTap: là 1 callback nó sẽ được gọi khi người dùng chạm vào 1 item BottomNavigationBar
//currentIndex là chỉ số của item đang được chọn của BottomNavigationBar, giá trị mặc định của nó là 0, tương ứng với item đầu tiên.
//iconSize: được sử dụng để chỉ định kích thước của biểu tượng của tất cả các BottomNavigationBarItem.

//selectedIconTheme được sử dụng để thiết lập kích thước (size), mầu sắc (color) và độ mờ đục (opacity) cho biểu tượng của BottomNavigationBarItem đang được chọn.
//unselectedIconTheme được sử dụng để thiết lập kích thước (size), mầu sắc (color) và độ mờ đục (opacity) cho biểu tượng của các BottomNavigationBarItem không được chọn.
 // selectedLabelStyle được sử dụng để chỉ định kiểu dáng văn bản trên nhãn của BottomNavigationBarItem đang được chọn.
 //unselectedLabelStyle được sử dụng để chỉ định kiểu dáng văn bản trên nhãn của các BottomNavigationBarItem không được chọn.
 //showSelectedLabels được sử dụng để cho phép hoặc không cho phép các nhãn (label) hiển thị trên BottomNavigationBarItem đang được chọn. Giá trị mặc định của nó là true.
 //showUnselectedLabels được sử dụng để cho phép hoặc không cho phép các nhãn (label) hiển thị trên BottomNavigationBarItem không được chọn. Giá trị mặc định của nó là true.
  //selectedFontSize được sử dụng để chỉ định kích thước phông chữ trên BottomNavigationBarItem đang được chọn. Giá trị mặc định của nó là 14.
  // selectedFontSize được sử dụng để chỉ định kích thước phông chữ trên các BottomNavigationBarItem không được chọn. Giá trị mặc định của nó là 12.
  //backgroundColor được sử dụng để chỉ định mầu nền cho BottomNavigationBar.
  //selectedItemColor được sử dụng để chỉ định mầu sắc cho BottomNavigationBarItem đang được chọn, nó có tác dụng với biểu tượng và nhãn.
  //Chú ý: Property selectedItemColor giống với fixedColor, bạn chỉ được phép sử dụng một trong hai property này.
  //unselectedItemColor được sử dụng để chỉ định mầu sắc cho các BottomNavigationBarItem không được chọn, nó có tác dụng với biểu tượng và nhãn.

  // fixedColor giống với property selectedItemColor, chúng được sử dụng để chỉ định mầu sắc cho BottomNavigationBarItem đang được chọn, nó có tác dụng với biểu tượng và nhãn. 
//Chú ý: fixedColor là một cái tên cũ, nó còn tồn tại vì mục đích tương thích ngược (backwards compatibility). Bạn nên sử dụng property selectedItemColor, và không được phép sử dụng đồng thời cả hai