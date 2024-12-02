import 'package:flutter/material.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Deliver now",
          style: TextStyle(color: Theme.of(context).colorScheme.primary),
        ),
        Row(
          children: [
            // address
            Text(
              "6901 Hollywood Blv",
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
                fontWeight: FontWeight.bold,
              ),
            ),

            // drop down menu
            const Icon(Icons.keyboard_arrow_down_outlined),
          ],
        ),
      ],
    );
  }
}
