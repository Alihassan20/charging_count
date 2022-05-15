import 'package:charging_count/feature/charging_page/resuit/view.dart';
import 'package:flutter/material.dart';

class ChargingPage extends StatefulWidget {
  const ChargingPage({Key? key}) : super(key: key);

  @override
  _ChargingPageState createState() => _ChargingPageState();
}

class _ChargingPageState extends State<ChargingPage> {
  TextEditingController _controller = TextEditingController();
  var value;
  late double charge;
  late double pound;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("إشحن بكام"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("أدخل قيمة الشحن "),
                SizedBox(height: 20),
                TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    labelText: 'القيمة',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)
                    )
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: 200,
                  color: Colors.blue,
                  child: TextButton(
                      onPressed: () {
                        value = _controller.text;
                        value = double.parse(value);
                        charge = value * (70 / 100);
                        pound = value * 100 / 70;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChargingResult(
                                value: value.toString(),
                                pound: pound,
                                charge: charge),
                          ),
                        );
                        //amountController.text=charge.toString();
                      },
                      child: const Text(
                        'احسب',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      )),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
