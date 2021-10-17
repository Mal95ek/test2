import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDialogPlayAll extends StatefulWidget {
  @override
  _CustomDialogPlayAllState createState() => _CustomDialogPlayAllState();
}

class _CustomDialogPlayAllState extends State<CustomDialogPlayAll> {
  int _value = 1;
  List<Map<int, String>> listening = [
    {0: 'الفاتحه'},
    {1: 'استماع لصفحه كامله'},
    {2: 'استماع للحزب '},
    {3: 'استماع للجزـ '},
  ];
  Map<String, bool> hobis = {
    'تكرار الاستماع': false,
    'الاستماع من الصفحه الحاليه': false,
  };
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            body: AlertDialog(
          title: Text(
            'الاستماع',
            textAlign: TextAlign.center,
          ),
          content:
              Text("الرجاء الاختيار الماده الماده المراد سماعها لتلاوتها "),
          actions: [
            Column(
              children: [
                ...listening
                    .map((e) => RadioListTile(
                        controlAffinity: ListTileControlAffinity.trailing,
                        title: Text(e.values.first),
                        value: e.keys.first,
                        groupValue: _value,
                        onChanged: (int? value) =>
                            setState(() => _value = value!)))
                    .toList(),
                ...hobis.keys.map((String key) {
                  return new CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    title: new Text(key),
                    value: hobis[key],
                    onChanged: (value) {
                      setState(() {
                        hobis[key] = value as bool;
                      });
                      setState(() {});
                    },
                  );
                }).toList(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MaterialButton(
                        onPressed: () {},
                        child: Text(
                          'النعم',
                        )),
                    MaterialButton(
                      onPressed: () {},
                      child: Text('لا'),
                    )
                  ],
                )
              ],
            ),
          ],
        )));
  }
}
