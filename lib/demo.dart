import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DemoForApi extends StatefulWidget {
  const DemoForApi({Key? key}) : super(key: key);
  @override
  State<DemoForApi> createState() => _DemoForApiState();
}

class _DemoForApiState extends State<DemoForApi>
{
  bool show = false;
  bool check = false;
  TextEditingController Fname = TextEditingController();
  TextEditingController Lname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController pass = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(gradient: LinearGradient(
            colors: [Colors.blue.shade500,Colors.grey.shade400]
          )),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Image.asset("assets/icon.png",height: 200,width: 200,),),
                const SizedBox(height: 5,),
                TextFormField(
                  controller: Fname,
                  keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                  hintText: "Enter Your First Name",
                )),
                const SizedBox(height: 20,),
                TextFormField(
                    controller: Lname,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                    hintText: "Enter Your Last Name"
                )),
                const SizedBox(height: 20,),
                TextFormField(
                    controller: phone,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                        hintText: "Enter Your Phone Number"
                )),
                const SizedBox(height: 20,),
                // Row(
                //   children: [
                //     Container(decoration:BoxDecoration(borderRadius: BorderRadius.circular(20)),child: Text("+91")),
                //     TextFormField(keyboardType: TextInputType.number,
                //         decoration: InputDecoration(
                //         border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                //         hintText: "Enter Your Number"
                //     )),
                //   ],
                // ),
                //SizedBox(height: 20,),
                TextFormField(
                    controller: email,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                    hintText: "Enter Your Email Address"
                )),
                const SizedBox(height: 20,),
                TextFormField(
                    controller: pass,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                        hintText: "Enter Your Password",
                      suffixIcon: IconButton(icon: Icon(show?Icons.visibility:Icons.visibility_off),onPressed: (){
                        setState(() {
                          show =!show;
                        });
                      },)
                    ),
                ),
                CheckboxListTile(value: check,activeColor: Colors.blue.shade900,autofocus: false, onChanged: (value){setState(() {
                  check =!check;
                });},title: const Text("You agree to Terms & Conditionof the Easy Trade"),),
                const SizedBox(height: 20),
                Center(
                  child: Container(
                    height: 30,
                    width: 600,
                    decoration: BoxDecoration(
                      //color: Colors.blue.shade900,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: ElevatedButton(
                          child: const Text("SignUp"),
                          onPressed: () async{
                      await PostApi(Fname.text,Lname.text,phone.text,email.text,show);
                          },
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
  Future PostApi(String fname, String lname, String num, String add, bool showres) async
  {
    Map body = {
  //   'first_name': 'Raj',
  //   'last_name': 'Rupareliya',
  //   'mobile': '8460795021',
  //   'email': 'raj.rupareliya@coretus.com',
  //   'terms_condition': 'true',
  // 'country_code': '+91'
      "first_name": fname,
      "last_name" : lname,
      "mobile" : num,
      "email" : add,
      "terms_condition" : "true",
      "country_code" : "+91"
    };
    print(body);
    final response = await http.post(Uri.parse("http://192.168.0.40:8001/api/registration"),
      body: body,
    );
    var data=json.decode(response.body);
    print(data);
  }
}
