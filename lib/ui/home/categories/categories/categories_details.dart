import 'package:flutter/material.dart';
import 'package:news_app/api/api_manager.dart';
import 'package:news_app/model/sourcesRespone.dart';
import 'package:news_app/ui/home/categories/categories/tabBar/customTabBar.dart';

class CategoriesDetails extends StatefulWidget {
  String category;

  CategoriesDetails({super.key, required this.category});

  @override
  State<CategoriesDetails> createState() => _CategoriesDetailsState();
}

class _CategoriesDetailsState extends State<CategoriesDetails> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Source?>(
      future: ApiManager.getSources(widget.category),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator(color: Colors.black));
        } else if (snapshot.hasError) {
          return Column(
            children: [
              Text("Somethings Went Wrong"),
              ElevatedButton(
                onPressed: () {
                  ApiManager.getSources(widget.category);
                  setState(() {});
                },
                child: Text("Please Try Again"),
              ),
            ],
          );
        }
        if (snapshot.data!.status == "error") {
          return Column(
            children: [
              Text(snapshot.data!.message!),
              ElevatedButton(
                onPressed: () {
                  ApiManager.getSources(widget.category);
                  setState(() {});
                },
                child: Text("Please Try Again"),
              ),
            ],
          );
        }
        var sourceList = snapshot.data!.sources;
        return CustomTabBar(sourcesList: sourceList);
      },
    );
  }
}
