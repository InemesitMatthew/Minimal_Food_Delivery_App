import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/restaurant.dart';

class MyReceipt extends StatelessWidget {
  const MyReceipt({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 25.0, right: 25.0, bottom: 25.0, top: 50.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Thank you for your order!"),
            const SizedBox(height: 25),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Theme.of(context).colorScheme.secondary,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              padding: const EdgeInsets.all(25.0),
              child: Consumer<Restaurant>(
                builder: (context, restaurant, child) =>
                    Text(restaurant.displayCartReceipt()),
              ),
            ),
            const SizedBox(height: 25),
            const Text("Estimated delivery time: 30 minutes"),
          ],
        ),
      ),
    );
  }
}
