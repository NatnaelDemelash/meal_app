import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

import '../model/meal.dart';

class MealItem extends StatelessWidget {
  const MealItem({super.key, required this.meal});

  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: (){},
        child: Stack(
            children: [
              FadeInImage(placeholder: MemoryImage(kTransparentImage), image: NetworkImage(meal.imageUrl),),
              Positioned(
                bottom: 0,
                left: 0,
                right: 40,
                child: Container(
                padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 44),
                color: Colors.black54,
                child: Column(
                  children: [
                    Text(meal.title, textAlign: TextAlign.center, maxLines: 2,
                    softWrap: true, style: const TextStyle(color: Colors.white, fontSize: 20),),
                    const SizedBox(height: 12),
                    Row(
                      children: const [],
                    )
                  ],
                ),
                ),)
            ],
        ),
      ),
    );
  }
}