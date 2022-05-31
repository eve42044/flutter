import 'dart:ffi';


import 'package:flutter/material.dart';


class Scrool extends StatefulWidget {
  const Scrool({Key? key}) : super(key: key);

  @override
  State<Scrool> createState() => _Scrool();
}

class _Scrool extends State<Scrool> {
  String? answer = "";
  String? answer1 = "";
  String? answer2 = "";
  String? answer3 = "";
  String? answer4 = "";

  var num = ["A", "B", "B", "B", "D"];

  var point = 0;
  var check = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Quiz_ScrollView")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildText(
                  text: "1. คำถามข้อที่ 1",
                  size: 22.0,
                  weight: FontWeight.bold),
              buildRadio(text: "ตอบ A", value: "A"),
              buildRadio(text: "ตอบ B", value: "B"),
              buildRadio(text: "ตอบ C", value: "C"),
              buildRadio(text: "ตอบ D", value: "D"),
              buildText(
                  text: "2. คำถามข้อที่ 2",
                  size: 22.0,
                  weight: FontWeight.bold),
              buildRadio1(text: "ตอบ A", value: "A"),
              buildRadio1(text: "ตอบ B", value: "B"),
              buildRadio1(text: "ตอบ C", value: "C"),
              buildRadio1(text: "ตอบ D", value: "D"),
              buildText(
                  text: "3. คำถามข้อที่ 3",
                  size: 22.0,
                  weight: FontWeight.bold),
              buildRadio2(text: "ตอบ A", value: "A"),
              buildRadio2(text: "ตอบ B", value: "B"),
              buildRadio2(text: "ตอบ C", value: "C"),
              buildRadio2(text: "ตอบ D", value: "D"),
              buildText(
                  text: "4. คำถามข้อที่ 4",
                  size: 22.0,
                  weight: FontWeight.bold),
              buildRadio3(text: "ตอบ A", value: "A"),
              buildRadio3(text: "ตอบ B", value: "B"),
              buildRadio3(text: "ตอบ C", value: "C"),
              buildRadio3(text: "ตอบ D", value: "D"),
              buildText(
                  text: "5. คำถามข้อที่ 5",
                  size: 22.0,
                  weight: FontWeight.bold),
              buildRadio4(text: "ตอบ A", value: "A"),
              buildRadio4(text: "ตอบ B", value: "B"),
              buildRadio4(text: "ตอบ C", value: "C"),
              buildRadio4(text: "ตอบ D", value: "D"),
              buildButton(text: "Next", heightButton: 50.0, widthButton: 100.0)
            ],
          ),
        ),
      ),
    );
  }

  buildText({text, size, weight, color}) {
    return Text(text,
        style: TextStyle(fontSize: size, fontWeight: weight, color: color));
  }

  buildRadio({text, value}) {
    return ListTile(
      title: buildText(text: text, size: 20.0),
      leading: Radio<String?>(
        value: value,
        groupValue: answer,
        onChanged: (val) {
          setState(() {
            answer = val;
          });
        },
      ),
    );
  }

  buildRadio1({text, value}) {
    return ListTile(
      title: buildText(text: text, size: 20.0),
      leading: Radio<String?>(
        value: value,
        groupValue: answer1,
        onChanged: (val) {
          setState(() {
            answer1 = val;
          });
        },
      ),
    );
  }

  buildRadio2({text, value}) {
    return ListTile(
      title: buildText(text: text, size: 20.0),
      leading: Radio<String?>(
        value: value,
        groupValue: answer2,
        onChanged: (val) {
          setState(() {
            answer2 = val;
          });
        },
      ),
    );
  }

  buildRadio3({text, value}) {
    return ListTile(
      title: buildText(text: text, size: 20.0),
      leading: Radio<String?>(
        value: value,
        groupValue: answer3,
        onChanged: (val) {
          setState(() {
            answer3 = val;
          });
        },
      ),
    );
  }

  buildRadio4({text, value}) {
    return ListTile(
      title: buildText(text: text, size: 20.0),
      leading: Radio<String?>(
        value: value,
        groupValue: answer4,
        onChanged: (val) {
          setState(() {
            answer4 = val;
          });
        },
      ),
    );
  }

  buildButton({text, heightButton, widthButton}) {
    return Center(
      child: Container(
        width: widthButton,
        height: heightButton,
        child: ElevatedButton(
          onPressed: () {
            build_check();
            ShowDialog();
          },
          child: buildText(text: text, size: 15.0),
        ),
      ),
    );
  }

  ShowDialog() {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext) {
          return AlertDialog(
            title: Text('คะแนนคุณคือ : $point'),
            content: buildText(
                text: ("ข้อที่:1 "), size: 11.0, weight: FontWeight.w300),
            actions: <Widget>[
              FlatButton(
                onPressed: () {},
                child: Text('OK'),
              ),
              FlatButton(
                onPressed: () {},
                child: Text('Reset!'),
              ),
            ],
            elevation: 24.0,
          );
        });
  }

  build_check() {
    var check1 = [answer, answer1, answer2, answer3, answer4];
    for (var i = 0; i < check1.length; i++) {
      if (check1[i] == num[i]) {
        point++;
        check.add("ถูก");
      } else {
        check.add("ผิด");
      }
    }
  }
}
