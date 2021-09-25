import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController extends GetxController{
  var books = 0.obs;
  var Pens= 0.obs;
  int get sum => books.value + Pens.value;
    incrementbook(){
      books.value ++;
    }
  decrementbook(){
      if(books.value<=0){
        Get.snackbar("Buying Books", "Can not be less than Zero",
       icon: Icon(Icons.alarm),
            barBlur: 10,
          isDismissible: true,
          duration: Duration(seconds: 3),
        );
      }else{
        books.value --;
      }
  }

  incrementPens(){
    Pens.value ++;
  }
  decrementPens(){
    if(Pens.value<=0){
      Get.snackbar("Buying Pens", "Can not be less than Zero",
        icon: Icon(Icons.alarm),
        barBlur: 10,
        isDismissible: true,
        duration: Duration(seconds: 3),
      );
    }else{
      Pens.value --;
    }
  }
}