import 'package:eve/variable.dart';
import 'package:eve/view/page1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() =>  homepageState();
}

class  homepageState extends State <homepage> {
  TextEditingController nicknameControllerl = TextEditingController();
  Color? color_input =Color.fromARGB(255, 2, 2, 2);
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: build_text(text: "QuizApp",size: 16.0,weight: FontWeight.w200),  
    ),
    body: Padding(
      padding: const EdgeInsets.all(40.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            build_text(text: "กรุณากรอกชื่อเล่น",size: 20.0,weight: FontWeight.bold,color: Color.fromARGB(255, 0, 0, 0)),
            build_input(text: "ชื่อเล่น",color: color_input),
            build_button(text: "START",size: 12.0, weight: FontWeight.normal, width_button: 100.0,height_button: 35.0),


          ],
        ),
      ),
       ),
    );
  }

  build_text({text,size,weight,color}){
    return Text(
      text,style: TextStyle(fontSize: size,fontWeight: weight,color: color),
    );
  }
    
  build_input({text,color}){
    return TextFormField(
      controller: nicknameControllerl,
      decoration: InputDecoration(
        labelText: text,focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: color)),
        labelStyle: TextStyle(color: color)
      ),
    );
  }

  build_button({text,size,color,weight,height_button,width_button}){
    return Container(
      width: width_button,
      height: height_button,
      child: ElevatedButton(onPressed: (){
        if(nicknameControllerl.text==""){
          setState(() {
            color_input =Color.fromARGB(255, 12, 12, 12);
          });
        }else{
        nickname = nicknameControllerl.text;
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => page1()),(route) => false);
        }
      },
      child: build_text(text: text,size: size,weight: weight,color: color),
      ),
    );
  }
}