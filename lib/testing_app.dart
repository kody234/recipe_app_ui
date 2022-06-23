import 'package:flutter/material.dart';

class TestingApp extends StatelessWidget {
  const TestingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/background_image.png'),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 47),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  const Center(
                    child: Text(
                      'Fun Cooking',
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 64,
                  ),
                  const CustomTextField(
                    label: 'email',
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const CustomTextField(
                    label: 'password',
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    children: [
                      Checkbox(
                          activeColor: Colors.white,
                          focusColor: Colors.white,
                          value: true,
                          onChanged: (v) {}),
                      const Text(
                        'Remember Me',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Center(
                    child: Container(
                      height: 40,
                      width: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.yellow),
                      child: const Center(
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 31,
                  ),
                  const Center(
                    child: Text(
                      'Forget Your Password?',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 44,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Don’t have an account?',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                      Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Colors.yellow),
                      ),
                      ListTile(),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.label,
  }) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
              fontSize: 16, fontWeight: FontWeight.w700, color: Colors.white),
        ),
        const SizedBox(
          height: 8,
        ),
        TextFormField(
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              filled: true,
              hintText: label,
              fillColor: Colors.white),
        ),
      ],
    );
  }
}
