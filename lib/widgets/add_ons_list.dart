import 'package:flutter/material.dart';

class AddOnsList extends StatefulWidget {
  const AddOnsList({super.key});

  @override
  _AddOnsListState createState() => _AddOnsListState();
}

class _AddOnsListState extends State<AddOnsList> {
  bool privateCarSelected = false;
  bool breakfastSelected = false;
  bool tourGuideSelected = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Select Add-Ons:',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        CheckboxListTile(
          title: const Text('Private Car (4 Seater)'),
          value: privateCarSelected,
          onChanged: (bool? value) {
            setState(() {
              privateCarSelected = value!;
            });
          },
        ),
        CheckboxListTile(
          title: const Text('Breakfast & Snacks'),
          value: breakfastSelected,
          onChanged: (bool? value) {
            setState(() {
              breakfastSelected = value!;
            });
          },
        ),
        CheckboxListTile(
          title: const Text('Tour Guide'),
          value: tourGuideSelected,
          onChanged: (bool? value) {
            setState(() {
              tourGuideSelected = value!;
            });
          },
        ),
      ],
    );
  }
}
