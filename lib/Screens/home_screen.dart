import 'package:badges/badges.dart';
import 'package:event_test/Widgets/card_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 50,
        decoration: const BoxDecoration(
          color: Colors.lime,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(15.0),
            topLeft: Radius.circular(15.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                Icons.home,
                color: Colors.red,
              ),
              const Icon(
                Icons.call,
                color: Colors.grey,
              ),
              const Icon(
                Icons.no_accounts,
                color: Colors.grey,
              ),
              Badge(
                child: const Icon(
                  Icons.notification_add,
                  color: Colors.grey,
                ),
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        shadowColor: Colors.white,
        elevation: 10.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Image.asset(
          'assets/temp_image.jpeg',
          height: 50,
          width: 50,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(60),
              child: Image.asset('assets/covid.png'),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'yOUR NECT EVENT'.toUpperCase(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            const CardWidget(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your Groups'.toUpperCase(),
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.green),
                  ),
                  Text(
                    'See All'.toUpperCase(),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 300,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.all(16),
                    margin: const EdgeInsets.all(16),
                    height: 300,
                    width: 200,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15.0),
                        topLeft: Radius.circular(15.0),
                        bottomLeft: Radius.circular(15.0),
                        bottomRight: Radius.circular(15.0),
                      ),
                      image: DecorationImage(
                        image: AssetImage('assets/temp_image.jpeg'),
                        //fit: BoxFit.cover
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: const Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'Flutter Islamabad',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              height: 1.5,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.video_call,
                        color: Colors.grey,
                        size: 20,
                      ),
                      const SizedBox(width: 20),
                      Column(
                        children: const [
                          Text(
                            'Start new group',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            'organize events ',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
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
            ),
            Container(
              height: 9,
              color: Colors.grey,
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
