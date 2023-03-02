import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomShee extends StatefulWidget {
  const BottomShee({Key? key}) : super(key: key);

  @override
  State<BottomShee> createState() => _BottomSheeState();
}

class _BottomSheeState extends State<BottomShee>
{
  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Bottom Sheet"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: (){
                      Get.bottomSheet(
                       Container(
                        child: Wrap( //A widget that displays its children in multiple horizontal or vertical runs. 
                          children: [
                            ListTile(
                              leading: Icon(Icons.wb_sunny_outlined),
                              title: Text("light theme ${Get.arguments}"),
                              onTap: (){Get.changeTheme(ThemeData.light());},
                            ),
                            ListTile(
                              leading: Icon(Icons.wb_sunny),
                              title: Text("Dark theme"),
                              onTap: (){Get.changeTheme(ThemeData.dark());},
                            )
                          ],
                        ),
                       ),
                        barrierColor: Colors.blueAccent,
                        isDismissible: false,
                        enableDrag: false //default false
                      );
                    },
                    child: Text("Bottom sheet"))
              ],
            ),
          ),
        )
    );
  }
}
