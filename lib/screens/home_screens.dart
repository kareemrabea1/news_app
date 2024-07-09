import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/widget/category_card.dart';
import 'package:news_app/widget/category_listview.dart';
import 'package:news_app/widget/news_list_view_bliuder.dart';
import 'package:news_app/widgets/news_list_view.dart';

class HomeScreens extends StatelessWidget {
  const HomeScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("News"),
              Text(
                "Cloud",
                style: TextStyle(color: Colors.orange),
              ),
            ],
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: CategoryListView(),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 32,
                ),
              ),
               NewsListViewBluder(
                 category: 'general',
               ),
            ],
          ),
        ));
  }
}

