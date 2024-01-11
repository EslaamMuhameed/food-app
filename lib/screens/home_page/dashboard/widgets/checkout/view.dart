import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/screens/constans.dart';

import '../../controller.dart';
import 'order_summary/view.dart';

enum SingingCharacter { value1, value2 }

class CheckoutScreen extends StatefulWidget {
  @override
  _CheckoutScreenState createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  SingingCharacter? _value = SingingCharacter.value1;
  String dropdownValue = 'January';
  TimeOfDay? time;
  TimeOfDay? picked;

  @override
  void initState() {
    super.initState();
    time = TimeOfDay.now();
  }

  Future<Null> selectTime(BuildContext context) async {
    picked = await showTimePicker(context: context, initialTime: time!);

    if (picked != null) {
      setState(() {
        time = picked;
      });
    }
  }

  final controller = DashboardController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Checkout', style: bold),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 18,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        margin: EdgeInsets.all(25),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'Delivery Address',
                  style: boldjr,
                ),
                trailing: Text(
                  'Change',
                  style:
                      TextStyle(fontWeight: FontWeight.w500, color: appColor),
                ),
              ),
              Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 2,
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                  child: RichText(
                    //textAlign: TextAlign.center,
                    text: TextSpan(
                        style: TextStyle(color: Colors.black),
                        children: [
                          TextSpan(text: 'Eslam Sennna', style: boldjr),
                          WidgetSpan(
                              child: Divider(
                            thickness: 1,
                          )),
                          TextSpan(
                              text:
                                  '38/A,3rd floor\n${'Mansoura Dakahlia Egypt'}'),
                          WidgetSpan(
                              child: Divider(
                            thickness: 1,
                          )),
                          TextSpan(text: '+201001832088')
                        ]),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'Delivery Address',
                  style: boldjr,
                ),
                trailing: DropdownButton(
                    iconEnabledColor: Colors.black,
                    elevation: 1,
                    underline: Container(),
                    style: boldjr,
                    value: dropdownValue,
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    },
                    items: [
                      'January',
                      'February',
                      'March',
                      'April',
                      'May',
                      'June',
                      'July	',
                      'August',
                      'September',
                      'October',
                      'November',
                      'December',
                    ]
                        .map((value) => DropdownMenuItem(
                              value: value,
                              child: Text(value),
                            ))
                        .toList()),
              ),
              Container(
                height: 70,
                child: ListView.builder(
                    itemCount: 30,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (
                      context,
                      i,
                    ) =>
                        Card(
                          elevation: 1,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                controller.selected = i;
                              });
                            },
                            child: Container(
                              color: controller.selected == i
                                  ? appColor
                                  : backgroundColor,
                              width: 45,
                              child: Center(
                                child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                        style: TextStyle(
                                            color: controller.selected == i
                                                ? Colors.white
                                                : Colors.black,
                                            fontWeight: FontWeight.bold),
                                        children: [
                                          TextSpan(text: controller.days[i]),
                                          TextSpan(text: '\n\n${i + 1}')
                                        ])),
                              ),
                            ),
                          ),
                        )),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                child: ListTile(
                  title: Text(
                    'Time',
                    style: boldjr,
                  ),
                  trailing: Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: GestureDetector(
                      onTap: () {
                        selectTime(context);
                        print(time!);
                      },
                      child: Container(
                        color: Colors.white,
                        width: 100,
                        height: 40,
                        child: Center(
                            child: Text(
                          '${time!.hour}  :  ${time!.minute}',
                          style: boldjr,
                        )),
                      ),
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'Delivery method',
                  style: boldjr,
                ),
              ),
              Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 2,
                child: Container(
                  child: Column(
                    children: [
                      RadioListTile<SingingCharacter>(
                        title: const Text(
                          'Door delivery',
                          style: boldjr,
                        ),
                        value: SingingCharacter.value1,
                        groupValue: _value,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _value = value;
                          });
                        },
                      ),
                      Divider(
                        endIndent: 30,
                        thickness: 1,
                        indent: 70,
                      ),
                      RadioListTile<SingingCharacter>(
                        title: const Text(
                          'Pick up',
                          style: boldjr,
                        ),
                        value: SingingCharacter.value2,
                        groupValue: _value,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _value = value;
                          });
                        },
                      ),
                    ],
                  ),
                  color: Colors.white,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 50),
                height: 50,
                width: 350,
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OrderSummaryScreen()));
                  },
                  color: appColor,
                  child: Text(
                    'Checkout',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
