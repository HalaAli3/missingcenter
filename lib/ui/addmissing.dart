import 'package:flutter/material.dart';

class AddMissing extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AddMissingState();
  }
}

class _AddMissingState extends State<AddMissing> {
  TextEditingController _namemissingController = new TextEditingController();
  TextEditingController _phoneController = new TextEditingController();
  TextEditingController _detailsController = new TextEditingController();
  TextEditingController _placemissingController = new TextEditingController();

  var selectedcontery = '0';
  var selectedtype = '0';
  var selectedage = '0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF155E98),
        title: Text('اضافة مفقود',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                  child: TextField(
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    controller: _namemissingController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        labelText: 'اكتب اسم المفقود ',
                        labelStyle: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                  )),
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 10, right: 25),
                    child: Container(
                      padding: EdgeInsets.only(right: 7),
                      width: 130,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 1),
                          color: Colors.white),
                      child: DropdownButton<String>(
                        value: selectedage,
                        items: [
                          DropdownMenuItem(
                              value: '0',
                              child: Text(
                                'العمر',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )),
                          DropdownMenuItem(
                              value: '1',
                              child: Text('0 ـ 1سنة',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold))),
                          DropdownMenuItem(
                              value: '2',
                              child: Text('1_11 سنة',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold))),
                          DropdownMenuItem(
                              value: '3',
                              child: Text('11_20 سنة',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold))),
                          DropdownMenuItem(
                              value: '4',
                              child: Text('21_30 سنة',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold))),
                          DropdownMenuItem(
                              value: '5',
                              child: Text('31_40 سنة',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold))),
                          DropdownMenuItem(
                              value: '6',
                              child: Text('41_50 سنة',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold))),
                          DropdownMenuItem(
                              value: '7',
                              child: Text('51  فما فوق',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold))),
                        ],
                        onChanged: (v) {
                          setState(() {
                            selectedage = v;
                          });
                        },
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 10, right: 7),
                      child: Container(
                        padding: EdgeInsets.only(right: 7),
                        width: 90,
                        height: 35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(width: 1),
                            color: Colors.white),
                        child: DropdownButton<String>(
                          value: selectedtype,
                          items: [
                            DropdownMenuItem(
                                value: '0',
                                child: Text(
                                  'الجنس  ',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )),
                            DropdownMenuItem(
                                value: '1',
                                child: Text('أنثى',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold))),
                            DropdownMenuItem(
                                value: '2',
                                child: Text('ذكر',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold))),
                          ],
                          onChanged: (v) {
                            setState(() {
                              selectedtype = v;
                            });
                          },
                        ),
                      )),
                  Padding(
                      padding: EdgeInsets.only(top: 10, right: 7),
                      child: Container(
                        padding: EdgeInsets.only(right: 7),
                        width: 130,
                        height: 35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(width: 1),
                            color: Colors.white),
                        child: DropdownButton<String>(
                          value: selectedcontery,
                          items: [
                            DropdownMenuItem(
                                value: '0',
                                child: Text(
                                  'المحافظة      ',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )),
                            DropdownMenuItem(
                                value: '1',
                                child: Text('بغداد    ',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold))),
                            DropdownMenuItem(
                                value: '2',
                                child: Text('كربلاء    ',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold))),
                            DropdownMenuItem(
                                value: '3',
                                child: Text('    نجف',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold))),
                            DropdownMenuItem(
                                value: '4',
                                child: Text('ميسان    ',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold))),
                            DropdownMenuItem(
                                value: '5',
                                child: Text('    بصرة',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold))),
                            DropdownMenuItem(
                                value: '6',
                                child: Text('    واسط',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold))),
                            DropdownMenuItem(
                                value: '7',
                                child: Text('بابل    ',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold))),
                            DropdownMenuItem(
                                value: '8',
                                child: Text('  صلاح الدين',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold))),
                            DropdownMenuItem(
                                value: '9',
                                child: Text('    نينوى',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold))),
                            DropdownMenuItem(
                                value: '10',
                                child: Text('    ديالى',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold))),
                            DropdownMenuItem(
                                value: '11',
                                child: Text('    كركوك',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold))),
                            DropdownMenuItem(
                                value: '12',
                                child: Text('قادسية    ',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold))),
                            DropdownMenuItem(
                                value: '13',
                                child: Text('    المثنى',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold))),
                            DropdownMenuItem(
                                value: '14',
                                child: Text('الأنبار    ',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold))),
                            DropdownMenuItem(
                                value: '15',
                                child: Text('ذي قار    ',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold))),
                            DropdownMenuItem(
                                value: '16',
                                child: Text('دهوك    ',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold))),
                            DropdownMenuItem(
                                value: '17',
                                child: Text('   السليمانية',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold))),
                            DropdownMenuItem(
                                value: '18',
                                child: Text('     أربيل',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold))),
                          ],
                          onChanged: (v) {
                            setState(() {
                              selectedcontery = v;
                            });
                          },
                        ),
                      )),
                ],
              ),
              Padding(
                  padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                  child: TextField(
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    controller: _phoneController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        labelText: 'رقم الهاتف الخاص بك ',
                        labelStyle: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                  )),
              Padding(
                  padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                  child: TextField(
                    maxLines: 3,
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    controller: _detailsController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        labelText: 'تفاصيل عن المفقود ',
                        labelStyle: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                  )),
              Padding(
                  padding: EdgeInsets.only(top: 10, right: 20, left: 20),
                  child: TextField(
                    maxLines: 3,
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    controller: _placemissingController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        labelText: 'مكان تواجد المفقود ',
                        labelStyle: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                  )),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: RaisedButton(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Text(
                    'ارفاق صورة',
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                  textColor: Color(0xFF155E98),
                  elevation: 10,
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                  onPressed: () {},
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: RaisedButton(
                  padding: EdgeInsets.only(left: 55, right: 55),
                  child: Text(
                    'ارسال',
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                  textColor: Colors.white,
                  color: Color(0xFF155E98),
                  elevation: 10,
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
