import 'package:flutter/material.dart';

class DetailScxcreen extends StatelessWidget {
  const DetailScxcreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/images/background_image.png'),
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 49,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CustomRoundButton(
                    icon: Icons.arrow_back,
                  ),
                  CustomRoundButton(
                    icon: Icons.checklist,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 170,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 24,
                      ),
                      Text(
                        'Spaghetti with garlic\nShrimp',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                            fontSize: 24),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        'In Dinner',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            fontSize: 14),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomColumn(
                              icon: Icons.punch_clock_outlined,
                              label: '30 min',
                            ),
                            CustomColumn(
                              icon: Icons.local_fire_department_sharp,
                              label: 'easy level',
                            ),
                            CustomColumn(
                              icon: Icons.star,
                              label: '4.8/5',
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ListTile(
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.asset(
                            'assets/images/background_image.png',
                            height: 50,
                            width: 60,
                            fit: BoxFit.fill,
                          ),
                        ),
                        title: Text(
                          'Spaghetti',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              fontSize: 16),
                        ),
                        trailing: Text(
                          '500 gr',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              fontSize: 12),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomColumn extends StatelessWidget {
  const CustomColumn({
    Key? key,
    required this.label,
    required this.icon,
  }) : super(key: key);
  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.yellow,
          size: 22,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          label,
          style: TextStyle(
              fontWeight: FontWeight.w400, color: Colors.black, fontSize: 15),
        ),
      ],
    );
  }
}

class CustomRoundButton extends StatelessWidget {
  const CustomRoundButton({
    Key? key,
    required this.icon,
  }) : super(key: key);

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: 25,
      child: Center(
        child: Icon(
          icon,
          color: Colors.black,
        ),
      ),
    );
  }
}
