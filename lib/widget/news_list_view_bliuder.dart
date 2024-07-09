import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/widgets/news_list_view.dart';

class NewsListViewBluder extends StatefulWidget {
  const NewsListViewBluder({super.key,required this.category});
  final String category;
  @override
  State<NewsListViewBluder> createState() => _NewsListViewBluderState();
}

class _NewsListViewBluderState extends State<NewsListViewBluder> {
  var future;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future= NewsService(Dio()).getNews(
      category: widget.category
    );
  }
  Widget build(BuildContext context) {
    return FutureBuilder <List<ArticleModel>>(//علشان اعرفه انى بستقبل المتغير من النوع <List<ArticleModel>>
      future:future,
        builder: (context ,snapshot) {
      if (snapshot.hasData) {
        return NewsListView(
               articles: snapshot.data!,
        );
      }
      else if(snapshot.hasError){
        return const SliverToBoxAdapter(child: Text('opss ther was an error ..try later '),
        );
      }
      else{
        return
        const SliverToBoxAdapter(
          child: Center(child: CircularProgressIndicator(),),);
       }

    },
    );
  }
}
