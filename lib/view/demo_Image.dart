import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DemoImage extends StatefulWidget {
  const DemoImage({Key? key}) : super(key: key);

  @override
  State<DemoImage> createState() => _DemoImageState();
}

class _DemoImageState extends State<DemoImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(

          children: [
            // IMAGE TỪ NETWORK 
            // Hiển thị hình ảnh có placeholder khi chưa load image xong
             // widget có thể hiện 1 hình ảnh từ 1 link : và có cả hiệu ứng mà đợi load ảnh lên 
            Container(
              height: 100,
              width: 100,
              child: FadeInImage.assetNetwork(
                placeholder: 'assets/images/girl.jpeg',
                image: 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
              ),
            ),
      
      
            Container(
              height: 100,
              width: 100,
              child: ClipRRect(    // Dùng để bo viền cho child  
                              borderRadius: BorderRadius.circular(10),
                              clipBehavior: Clip.hardEdge,
                              child: Center(
                                child: FadeInImage.assetNetwork(
                                    placeholder: 'assets/images/girl.jpeg',
                                    image:  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'
                                ),
                              ),
                            ),
            ),

            ClipRRect(
              child: Container(
                height: 100,
                width: 100,
              child:  Image.network(
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                      errorBuilder: (context, error, stackTrace) => const Icon(Icons.error),
                //       loadingBuilder: (context, child, loadingProgress) =>
                // const CircularProgressIndicator(),
                      fit: BoxFit.fill,
                    ),
              ),
            ),

          //---IMAGE TRONG PROJECT
           Container(
            height: 100,
            width: 100,
            child: Image.asset(
            'assets/images/girl.jpeg',
            fit: BoxFit.fill,
          ),
           ),

          //--- GẮN IMAGE VÀO 1 BUTTON
           Container(
            height: 100,
            width: 100,
            child :  IconButton(
        icon: Image.asset(
         'assets/images/girl.jpeg',
          // color:  Colors.grey[800],
        ), onPressed: () {  },
        
      ),
           ),

          //  //IMAGE TỪ ĐƯỜNG DẪN BỘ NHỚ MÁY
          //  Container(
          //   height: 100,
          //   width: 100,
          // child:  Image.file(
          //       File(BlocProvider.of<AddCustomermBloc>(context).state.image!),   // Đường dẫn bộ nhớ máy
          //       fit: BoxFit.cover,
          //     ),
          //  ),

          ],
        ),
      ),
    );
  }
}
