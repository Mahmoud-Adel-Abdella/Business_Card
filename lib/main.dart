import 'package:flutter/material.dart';
import 'package:blurrycontainer/blurrycontainer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('Background Image.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Container(
                  width: 358,
                  height: 700,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white.withOpacity(0.3)
                    ),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.15),
                      blurRadius: 20,
                      offset: Offset(0, 8)
                    ),
                  ]
                  ),
                child: BlurryContainer(
                  width: 358,
                  height: 700,
                  blur: 4,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 80,
                        backgroundColor: Colors.white ,
                        child: CircleAvatar(
                          foregroundImage: AssetImage('Mahmoud.jpg'),
                          radius: 75,
                        )
                      ),
                      Text(
                        'Mahmoud Adel',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                        ),
                      ),
                      Text(
                        'QA & Flutter Developer',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontWeight: FontWeight.w500,
                          fontSize: 24
                        ),
                      ),
                      Text(
                        'QA Automation & Workflow Services',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          fontWeight: FontWeight.w500,
                          fontSize: 19
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 25),
                        child: Divider(
                          color: Colors.white.withOpacity(0.4),
                          endIndent: 20,
                          indent: 20,
                          thickness: 0.5,
                          radius: BorderRadius.circular(90),
                        ),
                      ),
                      ListTile(
                        title: Text('phone'),
                        textColor: Colors.white,
                      )
                    ],
                  )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
