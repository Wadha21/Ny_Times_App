import 'package:flutter/material.dart';
import 'package:new_york_time_app/Models/news_model.dart';
import 'package:new_york_time_app/Screens/DetaielsNewsScreen/category_widget.dart';
import 'package:new_york_time_app/Screens/HomeScreen/widgets/text_label.dart';
import 'package:new_york_time_app/constants/sizedbox_height.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class NewsScreen extends StatelessWidget {
  NewsScreen({
    super.key,
    required this.news,
  });
  String? urlImage;
  final New news;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(news.title),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextLabelWidget(
                text: news.abstract,
                fontSize: 14,
                fontWeight: FontWeight.normal,
              ),
            ),
            ExpansionTile(title: Text('More Detailes'), children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextLabelWidget(
                        text: news.byline,
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextLabelWidget(
                        text: news.publishedDate.toString(),
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ],
              ),
              if (news.desFacet.isNotEmpty)
                CategoryWidget(
                  title: "categories",
                  category: news.desFacet,
                ),
              if (news.geoFacet.isNotEmpty)
                CategoryWidget(
                  title: "Geographic locations",
                  category: news.geoFacet,
                ),
            ]),
            height24,
            Center(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(200, 50),
                  ),
                  onPressed: () async {
                    final Uri url = Uri.parse(news.url);
                    await launchUrl(url);
                  },
                  child: const Text("Read Article")),
            ),
          ],
        ),
      ),
    );
  }
}
