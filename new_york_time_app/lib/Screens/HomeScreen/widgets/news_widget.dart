import 'package:flutter/material.dart';
import 'package:new_york_time_app/Screens/HomeScreen/widgets/image_widget.dart';
import 'package:new_york_time_app/Screens/HomeScreen/widgets/text_label.dart';
import 'package:new_york_time_app/extensions/screen_dimensions.dart';

class NewsWidget extends StatelessWidget {
  const NewsWidget({
    super.key,
    required this.title,
    required this.description,
    required this.byline,
    required this.section,
    required this.publishedDate,
    required this.imageURL,
  });
  final String imageURL;
  final String title;
  final String description;
  final String byline;
  final String section;
  final String publishedDate;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Flexible(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Center(
                        child: DispalyImageWidget(
                          imageUrl: imageURL,
                          size: context.getWidth(divide: 3),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextLabelWidget(
                        text: title,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 4,
                          right: 4,
                        ),
                        child: TextLabelWidget(
                          text: description,
                          fontSize: 10,
                          textAlign: TextAlign.start,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: TextLabelWidget(
                                text: byline,
                                fontWeight: FontWeight.w200,
                                color: Colors.grey,
                                fontSize: 10,
                                maxLine: 1,
                              ),
                            ),
                            Expanded(
                              child: TextLabelWidget(
                                text: publishedDate,
                                fontWeight: FontWeight.w200,
                                fontSize: 10,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(Icons.arrow_forward_ios_rounded),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
