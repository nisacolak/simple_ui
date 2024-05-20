import 'package:flutter/material.dart';

class SimpleDatepicker extends StatefulWidget {
  const SimpleDatepicker({super.key});

  @override
  State<SimpleDatepicker> createState() => _SimpleDatepickerState();
}

class _SimpleDatepickerState extends State<SimpleDatepicker> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Date: ${selectedDate.toLocal()}',
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () => _selectDate(context),
          child: Text('Pick a date'),
        ),
      ],
    );
  }
}
