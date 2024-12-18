import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/restaurant.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) {
        // cart
        final userCart = restaurant.cart;

        // scaffold UI
        return Scaffold(
          appBar: AppBar(
            title: Text("Cart"),
          ),
          body: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: userCart.length,
                  itemBuilder: (context, index) {
                    // get individual cart item

                    // return cart tile UI
                    return ListTile(
                      title: Text(userCart[index].food.name),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
