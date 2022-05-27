import 'package:eve/view/finish.dart';
import 'package:flutter/material.dart';
import 'package:eve/variable.dart';


class page5 extends StatefulWidget {
  const page5({Key? key}) : super(key: key);

  @override
  State<page5> createState() => _page5();
}

class _page5 extends State<page5>{
 String? answar ="";
@override
    Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: build_text(text: "Question5"),
    ),
    body: Padding(
      padding: const EdgeInsets.all(40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        build_progress(),
        build_text(text: "5. คำถามข้อที่ 5", size: 20.0,weight: FontWeight.w600),

        build_redio(text: "Answre a",value: "E"),
        build_redio(text: "Answre S",value: "S"),
        build_redio(text: "Answre T",value: "T"),
        build_redio(text: "Answre B",value: "B"),

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
          value: 1.0,
          valueColor: new AlwaysStoppedAnimation<Color>(Color.fromARGB(255, 4, 4, 4)),
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
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => finish()), (route) => false);
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