import 'package:flutter/material.dart';
import 'package:flutter_application_1/food_data_model.dart';
import 'package:flutter_application_1/screens/food_detail.dart';
import 'package:flutter_application_1/widgets/custom_food_card.dart';
import 'package:flutter_application_1/widgets/custom_options.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(child: Icon(Icons.person)),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Deliver to",
              style: TextStyle(
                fontSize: 17,
                color: Color.fromARGB(255, 107, 108, 113),
              ),
            ),
            Text(
              "Your Destination",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [Icon(Icons.notifications_none), Icon(Icons.notes)],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                "Lets find your best\nfavourite food!",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF46474B),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 400,
                child: Image(
                  image: AssetImage("assets/images/food1.png"),
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 20),
              CustomOptions(option: "Popular"),
              Text(
                "See the most popular food on order",
                style: TextStyle(fontSize: 15, color: Color(0xFFC5C4CB)),
              ),
              SizedBox(height: 15),
              SizedBox(
                height: 250,

                child: ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    CustomFoodCard(
                      image: AssetImage("assets/images/food2.png"),
                      foodName: "Special Pizza",
                      extra: "with tomato sauce",
                      cost: "12.5",
                      onPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return FoodDetail(
                                food: FoodDataModel(
                                  name: "Special Pizza",
                                  extra: "with tomato sauzce",
                                  description:
                                      "Meat Lovers is filled with toppings of sliced"
                                      "​​beef sausage, minced beef, beef burger, and"
                                      "chicken sausage. In one bite, you can taste a variety of processed meats"
                                      "that are many and dense. Especially the minced meat"
                                      "which still has fiber in it.",
                                  imagePath: "assets/images/food4.png",
                                ),
                              );
                            },
                          ),
                        );
                      },
                    ),
                    SizedBox(width: 20),
                    CustomFoodCard(
                      image: AssetImage("assets/images/food3.png"),
                      foodName: "Special Dimsum",
                      extra: "with meat filling",
                      cost: "8.95",
                      onPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return FoodDetail(
                                food: FoodDataModel(
                                  name: "Special Dimsum",
                                  extra: "With meat filling",
                                  description:
                                      "Golden Dragon Buns are handcrafted, artisan dim sum"
                                      "crafted with a translucent, delicate wheat starch wrapper that"
                                      "reveals a glistening interior. Stuffed with a savory blend of"
                                      "seasoned minced pork, tender shredded duck, and aromatic spring onions,"
                                      "each bun is infused with ginger and a splash of rich"
                                      "Shaoxing rice wine. Steamed to perfection, they offer a tender,"
                                      "pillowy bite that bursts with rich, umami-flavored broth"
                                      "and deeply savory goodness.",
                                  imagePath: "assets/images/food3.png",
                                ),
                              );
                            },
                          ),
                        );
                      },
                    ),
                    SizedBox(width: 20),
                    CustomFoodCard(
                      image: AssetImage("assets/images/burger.png"),
                      foodName: "Special Burger",
                      extra: "With Cheese",
                      cost: "10",
                      onPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return FoodDetail(
                                food: FoodDataModel(
                                  name: "Special Burger",
                                  extra: "10",
                                  description:
                                      "A mouthwatering, juicy grilled beef patty layered with rich,"
                                      "melted cheddar cheese, crisp fresh lettuce, ripe tomato slices,"
                                      "crunchy pickles, and thinly sliced onions. Finished with our creamy"
                                      "signature burger sauce and served in a soft, lightly toasted brioche bun for the"
                                      "perfect combination of savory, fresh, and tangy flavors in every bite.",
                                  imagePath: "assets/images/burger.png",
                                ),
                              );
                            },
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              CustomOptions(option: "New Menu"),
              Text(
                "See the most popular food on order",
                style: TextStyle(fontSize: 15, color: Color(0xFFC5C4CB)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
