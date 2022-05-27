import 'package:eve/view/page5.dart';
import 'package:flutter/material.dart';
import 'package:eve/variable.dart';


class page4 extends StatefulWidget {
  const page4({Key? key}) : super(key: key);

  @override
  State<page4> createState() => _page4();
}

class _page4 extends State<page4>{
 String? answar ="";
@override
    Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: build_text(text: "Question4"),
    ),
    body: Padding(
      padding: const EdgeInsets.all(40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        build_progress(),
        build_text(text: "4. คำถามข้อที่ 4", size: 20.0,weight: FontWeight.w600),

        build_redio(text: "Answre E",value: "E"),
        build_redio(text: "Answre F",value: "F"),
        build_redio(text: "Answre G",value: "G"),
        build_redio(text: "Answre H",value: "H"),

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
          value: 0.8,
          valueColor: new AlwaysStoppedAnimation<Color>(Color.fromARGB(255, 19, 18, 19)),
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
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>page5()), (route) => false);
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