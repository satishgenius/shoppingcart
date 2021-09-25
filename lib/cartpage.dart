import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppingcart/my_controller.dar.dart';
import 'package:shoppingcart/totalpage.dart';


class cartpage extends StatelessWidget {
 cartpage({Key? key}) : super(key: key);
    final MyController c = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text('Cart ',),
       backgroundColor: Colors.blueGrey,
       toolbarHeight: 80,
     ),
      body: Container(
        padding: EdgeInsets.all(30),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Row(
                children: [
                  Text('Books',style: TextStyle(
                    fontSize: 30,color: Colors.black
                  ),),
                  Expanded(child: Container()),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.redAccent,
                    ),
                    child: IconButton(
                      icon: Icon(Icons.add,color: Colors.white,), onPressed: () =>c.incrementbook(),
                    ),
                  ),
                  SizedBox(width: 20),
                  Obx(()=>Text("${c.books()}",style: TextStyle(fontSize : 25,color: Colors.black),
                  ),),

                  SizedBox(width: 20,),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.redAccent,
                    ),
                    child: IconButton(
                      icon: Icon(Icons.remove,color: Colors.white,), onPressed: () =>c.decrementbook(),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                children: [
                  Text('Pens',style: TextStyle(
                      fontSize: 30,color: Colors.black
                  ),),
                  Expanded(child: Container()),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.redAccent,
                    ),
                    child: IconButton(
                      icon: Icon(Icons.add,color: Colors.white,), onPressed: () =>c.incrementPens(),
                    ),
                  ),
                  SizedBox(width: 20),
                  Obx(()=>Text("${c.Pens()}",style: TextStyle(fontSize : 25,color: Colors.black),
                  ),),

                  SizedBox(width: 20,),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.redAccent,
                    ),
                    child: IconButton(
                      icon: Icon(Icons.remove,color: Colors.white,), onPressed: () =>c.decrementPens(),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
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
                  Get.to(totalpage());
                },
                child: const Text(' Total ',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
