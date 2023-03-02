import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxNamedRoute extends StatefulWidget {
  const GetxNamedRoute({Key? key}) : super(key: key);

  @override
  State<GetxNamedRoute> createState() => _GetxNamedRouteState();
}

class _GetxNamedRouteState extends State<GetxNamedRoute>
{
  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("named Route"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: (){
                    Get.toNamed("/ ?channel = Ripple code & content = Flutter Getx");
                  },
                  child: Text("Go To Route Navigation"))
            ],
          ),
        ),
      ),
    );
  }
}
