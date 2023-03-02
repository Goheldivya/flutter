import 'package:demo_projects/GetxBottomsheet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxRouteNavi extends StatefulWidget {
  const GetxRouteNavi({Key? key}) : super(key: key);

  @override
  State<GetxRouteNavi> createState() => _GetxRouteNaviState();
}

class _GetxRouteNaviState extends State<GetxRouteNavi> {
  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Route Navigation"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: (){
                    Get.to(BottomShee(),
                      arguments: "How Are You",
                      transition: Transition.zoom,
                      fullscreenDialog: true
                    );
                  },                   // Get.back() and Get.back(result:");
                  child: Text("Go to Home Page ${Get.parameters['channel']} and content is {}"))
            ],
          ),
        ),
      ),
    );
  }
}
