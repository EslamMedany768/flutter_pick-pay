import 'package:flutter/material.dart';
import 'package:news_app/api/api_manager.dart';
import 'package:news_app/model/newsResponse.dart';
import 'package:news_app/model/sourcesRespone.dart';
import 'package:news_app/utils/AppColors.dart';

import 'card_news.dart';

class NewsWidget extends StatefulWidget {
  Sources source;

  NewsWidget({super.key, required this.source});

  @override
  State<NewsWidget> createState() => _NewsWidgetState();
}

class _NewsWidgetState extends State<NewsWidget> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<NewsResponse?>(
      future: ApiManager.getNewsBySourceId(widget.source.id ?? ""),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(color: AppColors.black),
          );
        } else if (snapshot.hasError) {
          Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  ApiManager.getNewsBySourceId(widget.source.id ?? "");
                  setState(() {});
                },
                child: Text(
                  "Try Again",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            ],
          );
        }
        if (snapshot.data!.status != "ok") {
          Text(
            "${snapshot.data!.message}",
            style: Theme.of(context).textTheme.titleLarge,
          );
        }
        var newsList = snapshot.data!.articles!;
        return ListView.builder(
          itemCount: newsList.length,
          itemBuilder: (context, index) {
            return CardNews(source: newsList[index]);
          },
        );
      },
    );
  }
}
