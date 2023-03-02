import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogBox extends StatefulWidget {
  const DialogBox({Key? key}) : super(key: key);

  @override
  State<DialogBox> createState() => _DialogBoxState();
}

class _DialogBoxState extends State<DialogBox> {
  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Dialog Getx"),
          ),
          body: Center(
            child: ElevatedButton(
              onPressed: (){
                //Get.defaultDialog();
                Get.defaultDialog(
                  title: "Alert Dialog",
                  titleStyle: TextStyle(fontSize: 20),
                  middleText: "Are You Sure To Delete File",
                  middleTextStyle: TextStyle(color: Colors.red),
                  textCancel: "Cancle",
                  textConfirm: "Conform",
                  onCancel: (){Get.back();},
                  onConfirm: (){},
                  cancel: Text("Go"),
                  confirm: Text("Welcome"),
                  barrierDismissible: false
                );
              },
              child: Text("Show Dialog"),
            ),
          ),
        )
    );
  }
}
