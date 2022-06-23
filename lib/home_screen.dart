import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'model/category.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        primary: true,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Hello Pelumi',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          'Ready to cook?',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    const CircleAvatar(
                      backgroundColor: Colors.yellow,
                      radius: 20,
                      child: Icon(
                        Icons.person,
                        color: Colors.black,
                        size: 35,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 44,
                        child: TextFormField(
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              filled: true,
                              hintText: 'Find recipe',
                              fillColor: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      height: 44,
                      width: 50,
                      child: const Icon(
                        Icons.search,
                        size: 30,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(5)),
                    )
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 40,
                  child: ListView.separated(
                      primary: false,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          height: 36,
                          width: 90,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(categories[index].icon),
                              Text(categories[index].name)
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          width: 12,
                        );
                      },
                      itemCount: categories.length),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Recommended',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 600,
                  child: GridView.builder(
                    primary: false,
                    shrinkWrap: true,
                    itemCount: meals.length,
                    scrollDirection: Axis.vertical,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisSpacing: 15,
                            mainAxisExtent: 260,
                            crossAxisCount: 2,
                            crossAxisSpacing: 10),
                    itemBuilder: (context, index) {
                      return MealContainer(
                        index: index,
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MealContainer extends StatelessWidget {
  final int index;
  const MealContainer({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        Container(
          height: 300,
          width: 300,
          color: Colors.transparent,
        ),
        Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Positioned(
          bottom: 150,
          right: 40,
          child: CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(meals[index].imageUrl),
          ),
        ),
      ],
    );
  }
}

List<Category> categories = [
  Category(name: 'Dinner', icon: Icons.dinner_dining),
  Category(name: 'Drink', icon: Icons.local_drink),
  Category(name: 'Bever', icon: Icons.emoji_food_beverage),
  Category(name: 'Dess', icon: Icons.details),
  Category(name: 'fruit', icon: Icons.free_breakfast),
  Category(name: 'eba', icon: Icons.stop_circle_outlined),
];

List<Meal> meals = [
  Meal(
      imageUrl: 'assets/beef_image.png',
      name: 'Grilled Beef Steak',
      time: '60',
      rating: '4.5',
      level: 'Hard'),
  Meal(
      imageUrl: 'assets/beef_image.png',
      name: 'Grilled Beef Steak',
      time: '60',
      rating: '4.5',
      level: 'Hard'),
  Meal(
      imageUrl: 'assets/beef_image.png',
      name: 'Grilled Beef Steak',
      time: '60',
      rating: '4.5',
      level: 'Hard'),
  Meal(
      imageUrl: 'assets/beef_image.png',
      name: 'Grilled Beef Steak',
      time: '60',
      rating: '4.5',
      level: 'Hard'),
];
