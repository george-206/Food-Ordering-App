import 'package:flutter/material.dart';
import 'package:flutter_application_1/food_data_model.dart';
import 'package:flutter_application_1/widgets/custom_counter.dart';

class FoodDetail extends StatelessWidget {
  final FoodDataModel food;
  const FoodDetail({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Center(
          child: Text(
            "Food Detail",
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.more_horiz),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage(food.imagePath!),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Row(
                children: [
                  Column(
                    children: [
                      SizedBox(height: 18),
                      Text(
                        food.name!,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Color(0xFF46474B),
                        ),
                      ),
                      Text(
                        food.extra!,
                        style: TextStyle(
                          color: Color(0xFFC7C5C5),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  CustomCounter(),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.yellow),
                  Text(
                    "4.3 Ratings",
                    style: TextStyle(fontSize: 15, color: Color(0xFF46474B)),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "Detail & Ingredient",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF46474B),
                ),
              ),
              Text(
                food.description!,
                style: TextStyle(color: Color(0xFF46474B), fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
