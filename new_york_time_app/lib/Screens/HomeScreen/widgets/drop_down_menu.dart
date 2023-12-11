import 'package:flutter/material.dart';
import 'package:new_york_time_app/Screens/HomeScreen/widgets/text_label.dart';

class MenuDrop extends StatelessWidget {
  const MenuDrop({super.key, required this.value, this.onChanged});

  final String value;
  final Function(String?)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, top: 24, right: 24, bottom: 8),
      child: SizedBox(
        width: 100,
        child: Align(
          alignment: Alignment.centerLeft,
          child: DropdownButton<String>(
            focusColor: Colors.blue,
            padding: EdgeInsets.only(top: 25),
            hint: TextLabelWidget(
              text: value,
              color: Colors.white,
              fontSize: 20,
            ),
            disabledHint: TextLabelWidget(
              text: value,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            iconEnabledColor: Colors.black,
            items: <String>['Emailed', 'Shared', 'Viewed']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: TextLabelWidget(text: value),
                alignment: Alignment.center,
              );
            }).toList(),
            onChanged: onChanged,
            dropdownColor: Colors.white,
            isExpanded: false,
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
