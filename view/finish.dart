

import 'package:eve/view/homepage.dart';
import 'package:flutter/material.dart';
import 'package:eve/variable.dart';


class finish extends StatefulWidget {
  const finish({Key? key}) : super(key: key);

  @override
  State<finish> createState() =>_finish();
}

class _finish extends State<finish>{

 int point = 0;
 var mess = [];


@override
    Widget build(BuildContext context) {
      build_check();
  return Scaffold(
    appBar: AppBar(
      title: (const Text("finalscore")),
    ),
    body: Padding(
      padding: const EdgeInsets.all(40.0),
      child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
      
        build_text(text: "ชื่อ$nickname", size: 20.0,weight: FontWeight.w400),
        build_text(text: "คะแนน$point", size: 20.0,weight: FontWeight.w400),
        build_button(text: "GET OUT",height_button: 35.0,width_button: 100.0),
        for(var i = 0; i < answar.length; i++)
        
        build_text(text: "ข้อ"+(i+1).toString()  +income_answer[i] +mess[i] +"คำตอบ " +answar[i] , size: 20.0,weight: FontWeight.w400)

        ],
      ),
      ),
    ),
  );
  }



 build_text({text,size,weight,color}){
    return Text(text,style: TextStyle(fontSize: size,fontWeight: weight,color: color),
    );
  }
 
 build_check(){
   for(var i = 0; i < 5 ; i++)
   if(answar[i] == income_answer[i]){
     point++ ;
     mess.add("ถูก");

     }else{
       mess.add("ผิด");
     }
 }



 build_button({text,size,color,weight,height_button,width_button}){
    return Container(
      width: width_button,
      height: height_button,
      child: ElevatedButton(onPressed: (){
    
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>homepage()),(route) => false);
        point = 0 ;
        income_answer = [];
      },
      child: build_text(text: text,size: size,weight: weight,color: color),
      ),
    );
  }
}


