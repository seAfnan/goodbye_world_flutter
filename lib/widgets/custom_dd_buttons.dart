import 'package:flutter/material.dart';

class CustomDropdownButtonClass extends StatefulWidget {
  final List<String> values;
  final double width;

  const CustomDropdownButtonClass(
      {super.key, required this.values, required this.width});

  @override
  _CustomDropdownButtonClassState createState() =>
      _CustomDropdownButtonClassState();
}

class _CustomDropdownButtonClassState extends State<CustomDropdownButtonClass> {
  String? selectedValue; // This stores the currently selected value

  @override
  void initState() {
    super.initState();
    selectedValue = widget.values[0]; // Initialize with the first value
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      color: Colors.black.withOpacity(0.9),
      alignment: Alignment.center,
      child: DropdownButton<String>(
        items: widget.values.map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        value: selectedValue, // Bind to the selectedValue
        dropdownColor: const Color.fromRGBO(53, 53, 53, 1.0),
        style: const TextStyle(color: Colors.white),
        onChanged: (String? newValue) {
          setState(() {
            selectedValue = newValue; // Update the selected value
          });
        },
      ),
    );
  }
}
