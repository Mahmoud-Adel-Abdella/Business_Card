import 'package:flutter/material.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(BusinessCard());
}

class BusinessCard extends StatelessWidget {
  BusinessCard({super.key});

  final Uri linkedinURL = Uri.parse(
    'https://www.linkedin.com/in/mahmoud-adel-abdella/',
  );
  final Uri websiteURL = Uri.parse('https://mahmoudadelabdella.xyz/');

  Future<void> _launchUrl(url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

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
                  image: AssetImage('assets/photos/Background Image.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Container(
                width: 370,
                height: 690,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white.withOpacity(0.3)),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.15),
                      blurRadius: 20,
                      offset: Offset(0, 8),
                    ),
                  ],
                ),
                child: BlurryContainer(
                  padding: EdgeInsets.zero,
                  color: Color.fromARGB(55, 36, 49, 58),
                  blur: 4,
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 128,
                        color: Color(0x800d9488),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 40, bottom: 15),
                            child: CircleAvatar(
                              radius: 80,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                radius: 75,
                                foregroundImage: AssetImage(
                                  'assets/photos/Mahmoud.jpg',
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'Mahmoud Adel Abdella',
                            style: TextStyle(
                              fontSize: 28,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'QA & Flutter Developer',
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.white
                            ),
                          ),
                          Text(
                            'QA Automation & Workflow Services',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white.withOpacity(0.8),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            child: Divider(
                              color: Color.fromARGB(255, 36, 49, 58),
                              endIndent: 20,
                              indent: 20,
                              thickness: 1,
                            ),
                          ),
                          ListTile(
                            dense: true,
                            leading: SvgPicture.asset(
                              'assets/icons/Phone.svg',
                              fit: BoxFit.cover,
                            ),
                            title: Text(
                              'Phone',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.6),
                                fontSize: 16,
                              ),
                            ),
                            subtitle: Text(
                              '+201080798036',
                              style: TextStyle(color: Colors.white, fontSize: 17),
                            ),
                          ),
                          ListTile(
                            dense: true,
                            leading: SvgPicture.asset(
                              'assets/icons/Email.svg',
                              fit: BoxFit.cover,
                            ),
                            title: Text(
                              'Email',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.6),
                                fontSize: 16,
                              ),
                            ),
                            subtitle: Text(
                              'mahmoud@mahmoudadelabdella.xyz',
                              style: TextStyle(color: Colors.white, fontSize: 14.5),
                            ),
                          ),
                          ListTile(
                            dense: true,
                            leading: SvgPicture.asset(
                              'assets/icons/Overlay+Border.svg',
                              fit: BoxFit.cover,
                            ),
                            title: Text(
                              'Location',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.6),
                                fontSize: 16,
                              ),
                            ),
                            subtitle: Text(
                              'Cairo, Egypt',
                              style: TextStyle(color: Colors.white, fontSize: 17),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            child: Divider(
                              color: Color.fromARGB(255, 36, 49, 58),
                              endIndent: 20,
                              indent: 20,
                              thickness: 1,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            spacing: 20,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  _launchUrl(linkedinURL);
                                },
                                child: Image.asset(
                                  'assets/icons/Link2.png',
                                  width: 50,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  _launchUrl(websiteURL);
                                },
                                child: Image.asset(
                                  'assets/icons/Link.png',
                                  width: 50,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
