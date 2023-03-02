import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxSnackBar extends StatefulWidget {
  const GetxSnackBar({Key? key}) : super(key: key);
  @override
  State<GetxSnackBar> createState() => _GetxSnackBarState();
}

class _GetxSnackBarState extends State<GetxSnackBar> {
  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("SnackBar Using Getx"),
          ),
          body: Center(
            child: ElevatedButton(
              onPressed: (){
                Get.snackbar("ShowSnackbar","this is snackbar message you show",
                    icon: Icon(Icons.notification_add),
                  colorText: Colors.black,
                  backgroundColor: Colors.red,
                  isDismissible: true,
                  dismissDirection: DismissDirection.horizontal,
                  forwardAnimationCurve: Curves.easeIn,
                  overlayBlur: 10
                );
              },
              child: Text("Show SnackBar"),
            ),
          ),
        )
    );
  }
}
