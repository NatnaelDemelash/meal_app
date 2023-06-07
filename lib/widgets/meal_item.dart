import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

import '../model/meal.dart';

class MealItem extends StatelessWidget {
  const MealItem({super.key, required this.meal});

  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          FadeInImage(placeholder: MemoryImage(kTransparentImage), image: NetworkImage(meal.imageUrl),),
          Positioned(
            bottom: 0,
            left: 0,
            right: 40,
            child: InkWell(
              onTap: (){},
              child: Container(
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 44),
              color: Colors.black54,
              child: Column(
                children: [
                  Text(meal.title, textAlign: TextAlign.center, maxLines: 2,
                  softWrap: true, style: const TextStyle(color: Colors.white, fontSize: 20),),
                  const SizedBox(height: 12),
                  Row(
                    children: [],
                  )
                ],
              ),
                      ),
            ))
        ],
    );
  }
}