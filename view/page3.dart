import 'package:eve/view/page4.dart';
import 'package:flutter/material.dart';
import 'package:eve/variable.dart';


class page3 extends StatefulWidget {
  const page3({Key? key}) : super(key: key);

  @override
  State<page3> createState() => _page3();
}

class _page3 extends State<page3>{
 String? answar ="";
@override
    Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: build_text(text: "Question3"),
    ),
    body: Padding(
      padding: const EdgeInsets.all(40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        build_progress(),
        build_text(text: "3. คำถามข้อที่ 3", size: 20.0,weight: FontWeight.w600),

        build_redio(text: "Answre I",value: "I"),
        build_redio(text: "Answre J",value: "J"),
        build_redio(text: "Answre K",value: "K"),
        build_redio(text: "Answre L",value: "L"),

        build_button(text: "button",height_button: 35.0,width_button: 100.0)
        ],
      ),
    ),
  );
  }



 build_text({text,size,weight,color}){
    return Text(text,style: TextStyle(fontSize: size,fontWeight: weight,color: color),
    );
  }
    build_progress(){
      return Container(
        alignment: Alignment.topCenter,
        margin: EdgeInsets.all(20.0),
        child: LinearProgressIndicator(
          value: 0.6,
          valueColor: new AlwaysStoppedAnimation<Color>(Color.fromARGB(255, 8, 8, 8)),
          backgroundColor: Color.fromARGB(255, 112, 212, 232),
        ),
      );
    }

build_redio({text , value}){
  return ListTile(
    title: build_text(text: text , size: 16.0),
    leading: Radio<String?>(
      value: value,
      groupValue: answar,
      onChanged: (val){

        setState(() {
          answar = val;
        });
      },
    )
  );
}


build_button({text , height_button , width_button}) {
  return Center(
    child: Container(
      margin: EdgeInsets.only(top: 15.0),
      width: width_button,
      height: height_button,
      child: ElevatedButton(
        onPressed: () {

          if(answar != ""){

            income_answer.add(answar);
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => page4()), (route) => false);
          }
        },
        child: 
        build_text(text: text)),
    ),
  );
}


box({height}){
  return SizedBox(
    height: height,
  );
}
}