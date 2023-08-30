import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());    // Tạo 1 đối tượgn MyApp()
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // Widget này là gốc cho ứng dụng của bạn

  @override // Viết lại method : phương thức , Property : thuộc tính
  Widget build(BuildContext context) {
    // build: xây dựng
    return MaterialApp(
      //Nguyên vật liệu Của App  : Bất kể app nào cũng phải có 1 MaterialApp
      title: 'Flutter Demo',
      theme: ThemeData(
        // Sẽ không ưu tiên chạy flutter run : sẽ chạy cái app lên :
        // Đây là Theme cho ứng dụng của bạn.
        //
        // Thử chạy ứng dụng của bạn với "flutter run". Bạn sẽ thấy
        // ứng dụng có thanh công cụ toolbar màu xanh. Sau đó, không thoát app,
        // thử thay đổi primarySwatch bên dưới thành Colors.green và sau đó gọi
        // "hot reload" (ấn "r" in bảng điều khiển bạn chạy "flutter run",
        // hoặc đơn giản chỉ lưu thay đổi để "hot reload" trong Flutter IDE)
        // Lưu ý rằng bộ đếm không reset về zero; ứng dụng không tự khởi động lại.
        primarySwatch: Colors.green,
      ),
      // home: const MyHomePage(), // Đây chính là cái ruột App :  MyHomePage : Lại là 1 widget : Đây chính là tạo ra đối tượng MyHomePage từ class MyHomePage
      home:  const MyHomePage(title: 'Hello'), // Đây chính là cái ruột App :  MyHomePage : Lại là 1 widget : Đây chính là tạo ra đối tượng MyHomePage từ class MyHomePage
    );
  }
}


// Trong OOP Lập trình hướng đối tượng 
/**
 Tất cả mọi thứ trong code nó đều là 
 đối tượng , con cho con mèo -- 
 class : thì lớp động vật 

 Lớp động vật --> tạo ra con chó con mèo 
 class xe cộ --> xe ô tô , xe máy 
  Tổng kết : class : Tạo ra đối tượng 
  1 app chỉ có duy nhất 1 void main ()
đó là cái gốc của app , nó sẽ chạy trên đó



Widget : là tất cả của 1 App . 
Widget : từng 1 viên gạch , xếp vào vào nhau - hàng gạch (widget) -màn hình  — xếp nhiều màn hình vào nhau — ra 1 cái app (widget)

 */

// // Tạo ra 1 widget : dạng class  ----> Cả cái cụm này chỉ là đoạn  khai báo tạo ra 1 cái class thôi 
// class view MyhomePage : dạng StatelessWidget 
// class MyHomePage extends StatelessWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Container(
//       height: 100,
//       width: 100,
//       color: Colors.amber,
//     ));
//   }
// }

// class view MyhomePage : dạng StatefulWidget 
// Đây chính là cách tạo ra 1 widget : MyHomePage : nó là 1 widget -- nó đầy đủ 1 màn hình
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // Widget này là home page cho ứng dụng của bạn. Nó là kiểu stateful (có trạng thái),
  // nghĩa là nó có State object (định nghĩa bên dưới) chứa các trường ảnh hưởng
  // đến giao diện của nó.

  // This class is the configuration for the state. It holds the values (in this
  // Class này cấu hình cho state. Nó chứa các giá trị (trong trường hợp này là tiêu đề)
  // đươc cung cấp bởi trường parent (trong trường hợp này là App widget) và
  // được sử dụng bằng phương pháp xây dựng của State. Các trường trong lớp con
  // Widget luôn được đánh dấu bằng "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // Lệnh gọi setState nói với khung Flutter framework rằng có vài thứ
      // đã thay đổi trong State này, khiến nó chạy lại phương thức xây dựng bên dưới
      // để màn hình có thể phản hồi các giá trị đã được cập nhật. Nếu ta thay đổi
      // _counter mà không gọi setState(), thì phương thức xây dựng sẽ không được
      // gọi lại, và do đó sẽ không có gì xảy ra.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Phương thức này chạy lại mỗi lần setState được gọi, ví dụ như được thực hiện
    // bằng phương pháp _incrementCounter ở trên.
    //
    // Khung Flutter framework đã được tối ưu để chạy lại các phương pháp xây dựng
    // nhanh chóng, do đó bạn chỉ cần xây dựng lại bất kỳ thứ gì cần cập nhật
    // thay vì thay đổi riêng lẻ widgets.
    return Scaffold(
      appBar: AppBar(
        // Ở đây, chúng tôi lấy giá trị từ đối tượng MyHomePage được tạo bởi
        // phương thức App.build và sử dụng giá trị đó để đặt tiêu đề cho thanh
        // ứng dụng của chúng tôi.
        title: Text(widget.title),
      ),
      body: Center(
        // Center là một widget bố cục. Nó nhận một child và đặt nó ở trung tâm
        // của parent.
        child: Column(
          // Column cũng là một wioget bố cục. Nó lấy một list của children và
          // sắp xếp theo chiều dọc. Theo mặc định, nó tự điều chỉnh kích thước
          // để phù hợp với các children theo chiều ngang, và cố gắng cao bằng
          // parent của nó.
          //
          // Gọi "debug painting" (ấn "p" trong bảng điều khiển, chọn hành động
          // "Toggle Debug Paint" từ Flutter Inspector trong Android Studio, hoặc
          // lệnh "Toggle Debug Paint" trong VS Code) để xem wireframe của mỗi widget.
          //
          // Column has various properties to control how it sizes itself and
          // Column có các thuộc tính khác nhau để kiểm soát kích thước của nó và
          // cách định vị các cột con của nó. Ở đây, chúng tôi sử dụng mainAxisAlignment
          // để căn giữa các phần tử con theo chiều dọc; trục chính ở đây là trục dọc
          // vì Column theo chiều dọc (trục vuông góc theo chiều ngang).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
         // Dấu phẩy ở cuối này làm cho định dạng tự động đẹp hơn cho các phương thức xây dựng.
    );
  }
}
