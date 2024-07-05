import 'package:flutter/material.dart';

enum ColorLabel {
  blue('Blue', Colors.blue),
  pink('Pink', Colors.pink),
  green('Green', Color.fromARGB(255, 28, 31, 28)),
  yellow('Orange', Colors.orange),
  grey('Grey', Colors.grey);

  const ColorLabel(this.label, this.color);
  final String label;
  final Color color;
}

class SimpleDropDown extends StatefulWidget {
  const SimpleDropDown({super.key});

  @override
  State<SimpleDropDown> createState() => _MenuViewState();
}

class _MenuViewState extends State<SimpleDropDown> {
  final TextEditingController colorController = TextEditingController();
  ColorLabel? selectedColor;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:  DropdownMenu<ColorLabel>(
                      initialSelection: ColorLabel.green,
                      controller: colorController,
                      enableSearch: true,
                      requestFocusOnTap: true,
                      label: const Text('Color'),
                      onSelected: (ColorLabel? color) {
                        setState(() {
                          selectedColor = color;
                        });
                      },
                      dropdownMenuEntries: ColorLabel.values
                          .map<DropdownMenuEntry<ColorLabel>>(
                              (ColorLabel color) {
                        return DropdownMenuEntry<ColorLabel>(
                          value: color,
                          label: color.label,
                          
                          style: MenuItemButton.styleFrom(
                            foregroundColor: color.color,
                            
                        
                          ),
                        );
                      }).toList(),
                    ),
      ),
    );
  }
}