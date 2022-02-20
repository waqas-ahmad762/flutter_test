import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        shadowColor: Colors.white,
        elevation: 4.0,
        margin: const EdgeInsets.all(12.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                DateTime.now().toString().toUpperCase(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'Flutter Flestival,\nIslamabad'.toUpperCase(),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        'Flutter Islamabad'.toUpperCase(),
                        style: const TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  Image.asset(
                    'assets/HomeWork_screen.png',
                    height: 80,
                    width: 80,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 16,
                        width: 16,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green,
                        ),
                        child: const Icon(
                          Icons.abc,
                          color: Colors.red,
                          size: 12,
                        ),
                      ),
                      const SizedBox(width: 12),
                      const Text(
                        '93 going : ',
                        style: TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(width: 12),
                      const Icon(
                        Icons.abc,
                        color: Colors.grey,
                        size: 12,
                      ),
                      const SizedBox(width: 12),
                      const Text(
                        'Online Event',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.video_call,
                    color: Colors.grey,
                    size: 20,
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
