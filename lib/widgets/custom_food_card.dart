import 'package:flutter/material.dart';

class CustomFoodCard extends StatelessWidget {
  final AssetImage image;
  final String foodName;
  final String extra;
  final String cost;
  final GestureTapCallback onPress;
  const CustomFoodCard({
    super.key,
    required this.image,
    required this.foodName,
    required this.extra,
    required this.cost,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: Card(
        elevation: 0,
        child: InkWell(
          onTap: onPress,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 100,
                alignment: Alignment.center,
                child: Image(image: image),
              ),
              Text(foodName, style: TextStyle(fontWeight: FontWeight.w500)),
              Text(extra, style: TextStyle(color: Color(0xFFC7C5C5))),
              Row(
                children: [
                  Text(
                    "\$$cost",
                    style: TextStyle(
                      color: Color(0xFF46474B),
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Spacer(),
                  CircleAvatar(
                    backgroundColor: Colors.orange,
                    child: Icon(Icons.add, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
