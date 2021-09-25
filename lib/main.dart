import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppingcart/cartpage.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        fontFamily: "Nunito"
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:Container(
          child: loginpage(),
        ),
      ),
    );
  }
}

class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  _loginpageState createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           Container(
             child: Column(
               children: [
                 Container(
                   margin: const EdgeInsets.only(
                   top: 100,
        ),
                   child: Text(
                       'Learn free',
                     style: TextStyle(
                       color: Color(0xffb40284a),
                       fontSize: 28
                     ),
                   ),
                 ),
                 SizedBox(
                   height: 15,
                 ),
                 Container(
                   margin: EdgeInsets.all(32),
                   padding: EdgeInsets.all(20),
                   child: Text(' We Make Learning easy,to buy book and other in our',
                     textAlign: TextAlign.center,
                     style: TextStyle(
                         color: Color(0xffb40284a),
                         fontSize: 18
                     ),


                   ),
                 ),
               ],
             ),
           ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 32
              ),
              child: Center(
                child: Image.asset("assets/images/image1-removebg-preview.png")
              ),
            ),
            Container(
              margin: EdgeInsets.all(70),
              padding: EdgeInsets.all(20),
              width:double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xffb40284a),
                  borderRadius: BorderRadius.circular(50)
              ),
              child: FlatButton(
                color: Color(0xffb40284a),
                onPressed: () {
                  Get.to(cartpage());
                },

                child: const Text(' Get Start',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
              ),
            ),
            SizedBox(
              height: 50
            )
          ],
        ),
      ),
    );
  }
}
