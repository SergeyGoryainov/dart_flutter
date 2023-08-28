import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('images/coal.png'),
              ),
              const Text(
                'Sergey Goriainov',
                style: const TextStyle(
                  color: Colors.white,
                  fontFamily: 'Knewave',
                  fontSize: 40.0,
                ),
              ),
              Text(
                'Flutter developer'.toUpperCase(),
                style: const TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Dancing',
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 200.0,
                child: Divider(
                  height: 1.0,
                  thickness: 1.0,
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: const Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  horizontalTitleGap: 0,
                  title: Text(
                      '+1 234 567 89 01',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.teal.shade900,
                        fontFamily: 'Dancing',
                      )
                  )
                )
              ),
              Card(
                margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  horizontalTitleGap: 0,
                  leading: const Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text(
                      'test@mail.ru',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.teal.shade900,
                        fontFamily: 'Dancing',
                      )
                  ),
                )
              )
            ],
          )
        ),
      ),
    );
  }
}
