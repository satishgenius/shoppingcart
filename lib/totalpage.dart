import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'cartpage.dart';
import 'my_controller.dar.dart';


class totalpage extends StatelessWidget {
   totalpage({Key? key}) : super(key: key);
  final MyController c = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Total"),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Total items",style: TextStyle(
                fontSize: 30,
                color: Colors.black,
              ),),
              SizedBox(
                height: 30,
              ),
              Obx(() => Text("${c.sum.toString()}",style: TextStyle(fontSize : 29,color: Colors.lightBlueAccent),),
              ),
            ],
           ),

        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 30.0,
        child:Icon(Icons.arrow_back) ,
        onPressed: (){
          Get.to(cartpage());
        },

      ),

    );
  }
}
