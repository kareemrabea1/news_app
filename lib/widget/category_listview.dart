import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widget/category_card.dart';

class CategoryListView extends StatelessWidget {
   CategoryListView({super.key});
  List<CategoryModel> categories=[
    const CategoryModel(image: "assets/science.jpeg", categoryName: "Business"),
    const CategoryModel(image: "assets/entertaiment.jpeg", categoryName: "Entertainment"),
    const CategoryModel(image: "assets/health.jpeg", categoryName: "Health"),
    const CategoryModel(image: "assets/science.jpeg", categoryName: "Science"),
    const CategoryModel(image: "assets/entertaiment.jpeg", categoryName: "Sports"),
    const CategoryModel(image: "assets/technology.jpeg", categoryName: "Technology"),
    const CategoryModel(image: "assets/technology.jpeg", categoryName: "General"),

  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context,index){
            return  CategoryCard(category: categories[index],);
          }
      ),
    );
  }
}
