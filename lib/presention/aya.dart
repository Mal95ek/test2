import 'package:flutter/material.dart';

class Aya extends StatefulWidget {
  @override
  _AyaState createState() => _AyaState();
}

class _AyaState extends State<Aya> {
  // ignore: unused_field
  var _tabController;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(actions: [
      Container(
        height: 500,
        width: 700,
        child: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              toolbarHeight: 50,
              backgroundColor: Colors.white,
              bottom: TabBar(
                labelColor: Colors.black,
                indicatorColor: Colors.blue,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(
                    text: "قواـم الايات",
                  ),
                  Tab(
                    text: "قواـم البحث",
                  ),
                ],
              ),
            ),
            body: TabBarView(
              children: <Widget>[
                MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => getshowDialog());
                  },
                  child: Text('نشاــ القاـم'),
                ),
                MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => getshowDialog());
                  },
                  child: Text('انشاــ القاـمه '),
                ),
              ],
            ),
          ),
        ),
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
