import 'package:flutter/material.dart';

class ChargingPage extends StatefulWidget {
  const ChargingPage({Key? key}) : super(key: key);

  @override
  _ChargingPageState createState() => _ChargingPageState();
}

class _ChargingPageState extends State<ChargingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("إشحن بكام"),
      ),
      body: Column(
        children: [
          Text("أدخل قيمة الشحن "),
          TextField(
            decoration: InputDecoration(
              labelText: 'القيمة',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15)
              )
            ),
          )
        ],
      ),
    );
  }
}
