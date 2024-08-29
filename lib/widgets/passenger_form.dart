import 'package:flutter/material.dart';

class PassengerForm extends StatelessWidget {
  const PassengerForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Passenger Details", style: TextStyle(fontSize: 18)),
        const SizedBox(height: 10),
        const TextField(
          decoration: InputDecoration(
            labelText: "Enter Full Name",
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 10),
        const TextField(
          decoration: InputDecoration(
            labelText: "Enter Age",
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 10),
        DropdownButtonFormField<String>(
          items: const [
            DropdownMenuItem(value: "Male", child: Text("Male")),
            DropdownMenuItem(value: "Female", child: Text("Female")),
          ],
          onChanged: (value) {},
          decoration: const InputDecoration(
            labelText: "Gender",
            border: OutlineInputBorder(),
          ),
        ),
      ],
    );
  }
}
