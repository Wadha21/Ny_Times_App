import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_york_time_app/Screens/DetaielsNewsScreen/detaiels_news_screen.dart';
import 'package:new_york_time_app/Screens/HomeScreen/widgets/drop_down_menu.dart';
import 'package:new_york_time_app/Screens/HomeScreen/widgets/news_widget.dart';
import 'package:new_york_time_app/Screens/HomeScreen/widgets/TabBar/tab_bar_widget.dart';
import 'package:new_york_time_app/blocs/news_bloc/news_bloc.dart';
import 'package:new_york_time_app/blocs/news_bloc/news_event.dart';
import 'package:new_york_time_app/blocs/news_bloc/news_state.dart';
import 'package:new_york_time_app/extensions/navigate_to.dart';

enum Period { day1, day7, day30 }

enum PathApi { shared, emailed, viewed }

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Period indexSegment = Period.day1;
  late TabController controller;
  String dropdownValue = 'Emailed';
  PathApi pathApi = PathApi.emailed;
  @override
  void initState() {
    super.initState();
    context.read<NewsBloc>().add(getEmailed1P1DataEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: MenuDrop(
          value: dropdownValue,
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
              switch (dropdownValue) {
                case "Emailed":
                  pathApi = PathApi.emailed;
                  break;
                case "Shared":
                  pathApi = PathApi.shared;
                  break;
                case "Viewed":
                  pathApi = PathApi.viewed;
                  break;
                default:
                  pathApi = PathApi.emailed;
              }
            });
          },
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
      ),
      body: SafeArea(
        child: ListView(
          // shrinkWrap: true,
          children: [
            SegmentedTab(
              selected: indexSegment,
              onSelectionChange: (index) {
                setState(() {
                  indexSegment = index;

                  switch (indexSegment) {
                    case Period.day1:
                      if (pathApi == PathApi.emailed) {
                        context.read<NewsBloc>().add(getEmailed1P1DataEvent());
                      } else if (pathApi == PathApi.shared) {
                        context.read<NewsBloc>().add(getSharedP1DataEvent());
                      } else if (pathApi == PathApi.viewed) {
                        context.read<NewsBloc>().add(getViewedP1DataEvent());
                      }
                      break;
                    case Period.day7:
                      if (pathApi == PathApi.emailed) {
                        context.read<NewsBloc>().add(getEmailed1P7DataEvent());
                      } else if (pathApi == PathApi.shared) {
                        context.read<NewsBloc>().add(getSharedP7DataEvent());
                      } else if (pathApi == PathApi.viewed) {
                        context.read<NewsBloc>().add(getViewedP7DataEvent());
                      }
                      break;
                    case Period.day30:
                      if (pathApi == PathApi.emailed) {
                        context.read<NewsBloc>().add(getEmailed1P30DataEvent());
                      } else if (pathApi == PathApi.shared) {
                        context.read<NewsBloc>().add(getSharedP30DataEvent());
                      } else if (pathApi == PathApi.viewed) {
                        context.read<NewsBloc>().add(getViewedP30DataEvent());
                      }
                      break;
                  }
                });
              },
            ),
            BlocBuilder<NewsBloc, NewsState>(
              builder: (context, news) {
                if (news is NewsLoadingState) {
                  return const Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircularProgressIndicator(),
                    ),
                  );
                }
                if (news is ErrorState) {
                  return Center(
                    child: Center(
                      child: Text(
                        news.message.toString(),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
                }
                if (news is NewsSuccessState) {
                  return Column(
                    children: news.newsList.map(
                      (newsItem) {
                        String? urlImage;
                        newsItem.media.map((e) {
                          urlImage = e.mediametadata.last.url.trim();
                        }).toList();

                        return InkWell(
                          child: NewsWidget(
                            imageURL: urlImage ?? '',
                            title: newsItem.title,
                            description: newsItem.abstract,
                            section: newsItem.section,
                            byline: newsItem.byline,
                            publishedDate: newsItem.publishedDate.toString(),
                          ),
                          onTap: () {
                            context.push(
                                view: NewsScreen(
                              news: newsItem,
                            ));
                          },
                        );
                      },
                    ).toList(),
                  );
                }
                return const Text('');
              },
            ),
          ],
        ),
      ),
    );
  }
}
