import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import '../components/my_button.dart';
import 'delivery_progress_page.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String cardNumber = ''; // Stores the credit card number
  String expiryDate = ''; // Stores the expiration date of the card
  String cardHolderName = ''; // Stores the cardholder's name
  String cvvCode = ''; // Stores the CVV code
  bool isCvvFocused = false; // Tracks if the CVV field is focused

  // Function triggered when the user taps "Pay Now"
  void userTappedPay() {
    if (formKey.currentState!.validate()) {
      // only show dialog if form is valid
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text("Confirm Payment"),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text("Card Number: $cardNumber"),
                Text("Expiry Date: $expiryDate"),
                Text("Card Holder Name: $cardHolderName"),
                Text("CVV: $cvvCode"),
              ],
            ),
          ),
          actions: [
            // Cancel button to close the dialog
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Cancel"),
            ),
            // Confirm button to navigate to the next page
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Close the dialog
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DeliveryProgressPage(),
                  ),
                );
              },
              child: const Text("Yes"),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text("Checkout"), // AppBar title
      ),
      body: SingleChildScrollView(
        // Ensures the content can scroll
        child: Padding(
          padding:
              const EdgeInsets.all(16.0), // Adds padding around the content
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Aligns content to the start
            children: [
              // Credit card preview widget
              CreditCardWidget(
                cardNumber: cardNumber,
                expiryDate: expiryDate,
                cardHolderName: cardHolderName,
                cvvCode: cvvCode,
                showBackView: isCvvFocused, // Shows back view if CVV is focused
                onCreditCardWidgetChange: (p0) {},
              ),
              const SizedBox(height: 20), // Adds spacing

              // Credit card form for user input
              CreditCardForm(
                cardNumber: cardNumber,
                expiryDate: expiryDate,
                cardHolderName: cardHolderName,
                cvvCode: cvvCode,
                onCreditCardModelChange: (data) {
                  setState(() {
                    cardNumber = data.cardNumber;
                    expiryDate = data.expiryDate;
                    cardHolderName = data.cardHolderName;
                    cvvCode = data.cvvCode;
                  });
                },
                formKey: formKey, // Form key for validation
              ),
              const SizedBox(height: 30), // Adds spacing before button

              // Pay Now button
              MyButton(
                text: "Pay Now",
                onTap: userTappedPay,
              ),
              const SizedBox(height: 25), // Adds spacing at the bottom
            ],
          ),
        ),
      ),
    );
  }
}
