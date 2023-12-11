import 'package:flutter/material.dart';
import 'package:new_york_time_app/Screens/HomeScreen/widgets/text_label.dart';
import 'package:new_york_time_app/extensions/screen_dimensions.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget(
      {super.key, required this.title, required this.category});
  final String title;
  final List<String> category;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextLabelWidget(
              text: title,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: context.getWidth(),
            child: Wrap(
              spacing: 5,
              crossAxisAlignment: WrapCrossAlignment.center,
              runAlignment: WrapAlignment.spaceBetween,
              alignment: WrapAlignment.center,
              children: category
                  .map((item) => SizedBox(
                        height: 60,
                        width: 150,
                        child: Card(
                          child: TextLabelWidget(
                            text: item,
                            textAlign: TextAlign.center,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ))
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}
