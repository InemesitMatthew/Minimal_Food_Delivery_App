import 'package:flutter/material.dart';

class MyReceipt extends StatelessWidget {
  const MyReceipt({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 25.0),
      child: Column(
        children: [
          const Text("Thank you for your order!"),
          Container(
            child: const Text("Receipt here..."),
          )
        ],
      ),
    );
  }
}
