import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widget/category_view.dart';

class CategoryCard extends StatelessWidget {
   CategoryCard({super.key,required this.category});
  CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
       onTap: (){
         Navigator.of(context).push(MaterialPageRoute(builder: (context){
           return CategoryView(
             category: category.categoryName,
           );
         },),);
       },
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Container(
          height: 100,
          width: 200,
          decoration: BoxDecoration(
            image:  DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(category.image),
            ),

            borderRadius: BorderRadius.circular(14),
          ),
          child:  Center(
              child: Text(
                category.categoryName,
                style: const TextStyle(
                    color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
              )),
        ),
      ),
    );
  }
}
