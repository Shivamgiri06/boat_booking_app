import 'package:flutter/material.dart';
import '../models/boat.dart';
import 'payment_screen.dart';
import '../widgets/add_ons_list.dart';

class AddOnsScreen extends StatelessWidget {
  final Boat boat;

  const AddOnsScreen({super.key, required this.boat});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add-Ons'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AddOnsList(),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PaymentScreen()),
                );
              },
              child: const Center(child: Text('Proceed to Payment')),
            ),
          ],
        ),
      ),
    );
  }
}
