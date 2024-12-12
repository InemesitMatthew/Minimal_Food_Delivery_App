import 'package:flutter/material.dart';
import '../model/food.dart';

class FoodPage extends StatefulWidget {
  final Food food;

  const FoodPage({
    super.key,
    required this.food,
  });

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // food image
          Image.asset(widget.food.imagePath),

          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // food name
                Text(
                  widget.food.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),

                // food price
                Text(
                  '\$${widget.food.price}',
                  style: TextStyle(
                    fontSize: 15,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),

                const SizedBox(height: 10),

                // food description
                Text(widget.food.description),

                const SizedBox(height: 10),

                Divider(color: Theme.of(context).colorScheme.secondary),

                const SizedBox(height: 10),

                // addons
                Text(
                  "Add-ons",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.zero,
                    itemCount: widget.food.availableAddons.length,
                    itemBuilder: (context, index) {
                      // get individual addon
                      Addon addon = widget.food.availableAddons[index];

                      // return check box UI
                      return CheckboxListTile(
                        title: Text(addon.name),
                        subtitle: Text(
                          '\$${addon.price}',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        value: false,
                        onChanged: (value) {},
                      );
                    },
                  ),
                ),
              ],
            ),
          ),

          // button -> add to cart
        ],
      ),
    );
  }
}
