import 'package:demo_ft_widget/effect_loading/app_loading.dart';
import 'package:flutter/material.dart';
import 'package:loader_overlay/loader_overlay.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();    // Tạo ra 1 GlobalKey Kiểu NavigatorState

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GlobalLoaderOverlay(
        useDefaultLoading: false,
        overlayWidget: Center(
          child:
              Container(width: 100, height: 100, padding: EdgeInsets.all(20), decoration: BoxDecoration(color: Color(0xff2A3D4F)), child: AppLoading.spinkit),
        ),
        child: MaterialApp(
          navigatorKey: navigatorKey,      // Đây chính là sử dụng GlobalKeys
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              // fontFamily: Fonts.SFPro
              // fontFamily: Fonts.regular
              ),
          home: Scaffold(
            appBar: AppBar(
              title: const Text('Home'),
            ),
            body: const DemoStatelessWidget()
          ),
        ));
  }
}

class DemoStatelessWidget extends StatelessWidget {
  const DemoStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Center(
              child: Container(
                width: 300,
                height: 300,
           
                child: Column(
                  children: [
                    InkWell(
                        onTap: () {
                          navigatorKey.currentContext!.loaderOverlay.show();   // Hiện hiệu ứng đợi ở bất cứ đâu
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          color: Colors.amber,
                        )),
                    SizedBox(
                      height: 100,
                    ),
                    InkWell(
                        onTap: () {
                          navigatorKey.currentContext!.loaderOverlay.hide();   // Ẩn hiệu ứng đợi ở bất cứ đâu 
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          color: Colors.blue,
                        )),
                  ],
                ),
              ),
            ));
  }
}
