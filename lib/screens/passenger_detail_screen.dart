import 'package:flutter/material.dart';
import '../models/boat.dart';
import 'add_ons_screen.dart';
import '../widgets/passenger_form.dart';

class PassengerDetailScreen extends StatelessWidget {
  final Boat boat;

  const PassengerDetailScreen({super.key, required this.boat});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Passenger Details"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Assam Travel Service",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      const Text("7:00 AM - 3:00 PM"),
                      const Text("2 Seats"),
                      const SizedBox(height: 8),
                      const Text(
                          "Your ticket information will be sent on this number:"),
                      Row(
                        children: [
                          const Icon(Icons.phone),
                          const SizedBox(width: 4),
                          const Text("91911234589"),
                          TextButton(
                            onPressed: () {
                              // Action to edit the phone number
                            },
                            child: const Text("Edit"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const PassengerForm(),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddOnsScreen(boat: boat),
                    ),
                  );
                },
                child: const Center(child: Text('Continue')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
