import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  List s = ['اختيار القارـ', 'تنزيل الصور', 'تنزيل الصور التي تحتوي ايات '];

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      AlertDialog(
        title: Text(
          'الاعدادات',
          textAlign: TextAlign.center,
        ),
        actions: [
          Column(
            children: [
              Divider(
                color: Colors.deepOrange,
              ),
              ...s.map((title) => MaterialButton(
                  onPressed: () {
                    setState(() {
                      if (s[0] == 'اختيار القارـ') {
                        showDialog(
                            context: context,
                            builder: (context) => getshowDialog());
                      }
                    });
                  },
                  child: Tab(text: title)))
            ],
          ),
        ],
      ),
    ]);
  }
}

Widget getshowDialog() {
  return AlertDialog(
    titlePadding: EdgeInsets.only(top: 10, left: 80),
    elevation: 90,
    title: Container(
      child: Text(
        'قاـمه البحث',
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    ),
    content: Text(
      'اسم القاـمه ',
    ),
    contentPadding: EdgeInsets.only(top: 10, left: 100),
    actions: [
      TextField(
        decoration: const InputDecoration(),
      ),
      SizedBox(
        height: 39,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MaterialButton(
              onPressed: () {},
              child: Text(
                'الغاـ',
                style: TextStyle(color: Colors.blue),
              )),
          MaterialButton(
              onPressed: () {},
              child: Text(
                'حفظ',
                style: TextStyle(color: Colors.blue),
              )),
        ],
      )
    ],
  );
}


// List<Map<int, Map<String, dynamic>>> s = [
//     {
//       1: {' اختيار القار': 'محمد صدسق المشناوي'}
//     },
//     {},
//     {}
//   ];
