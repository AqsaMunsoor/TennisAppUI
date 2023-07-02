import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tennisapp_ui/thirdscreen.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  List<String> titles = [
    'Women\'s \nClub',
    'Men\'s \nClub',
  ];
  List<Color> color = [
    Colors.pink.shade50,
    Colors.blue.shade50,
  ];
  List<String> images = [
    'assets/1.png',
    'assets/2.png',
  ];
  List<String> title = [
    'Yoga & Tennis',
    'Beginner Bootcamp',
    'Men\'s League',
  ];
  List<String> subtitle = [
    'Feb 27| 10:00am-11:00am',
    'July 17| 12:00pm-03:0pm',
    'Feb 27| 10:00am-11:00am',
  ];
  List<String> tileimages = [
    '🧘‍♀️',
    '⚾',
    '💪',
  ];
  List<Color> colors = [
    Colors.pink.shade50,
    Colors.blue.shade50,
    Colors.blue.shade50,
  ];
  List<String> prices = [
    '\$10',
    '\$10',
    '\$30',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffffeff),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 55,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: const Icon(Icons.menu),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const Icon(
                Icons.search,
                color: Colors.black,
                size: 30,
              ),
            ),
          ),
        ],
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Clubs',
            style: GoogleFonts.roboto(
                // color: Color(0xfffffeff),
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ThirdScreen(),
              ),
            );
          },
          child: SizedBox(
            height: 400,
            child: Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: titles.length,
                  itemBuilder: (context, index) {
                    return Stack(children: [
                      Container(
                        width: 270,
                        decoration: BoxDecoration(
                          color: color[index],
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        margin: const EdgeInsets.all(20),
                        padding: const EdgeInsets.all(20),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                titles[index],
                                style: GoogleFonts.roboto(
                                    fontSize: 25, fontWeight: FontWeight.w700),
                              ),
                              TextButton(
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                        OutlinedBorder>(
                                      const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                    ),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.white),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    'All Levels',
                                    style: GoogleFonts.roboto(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  )),
                              const SizedBox(
                                height: 150,
                              ),
                              Text(
                                '2 events',
                                style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400),
                              )
                            ]),
                      ),
                      Positioned(
                        left: 100,
                        right: 0,
                        bottom: 20,
                        top: 25,
                        child: SizedBox(
                            height: 270,
                            child: Image.asset(
                              images[index],
                              fit: BoxFit.cover,
                            )),
                      )
                    ]);
                  }),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Train',
                style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Alles',
                  style: GoogleFonts.roboto(
                      color: Colors.green,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: title.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: colors[index],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        tileimages[index],
                        style: const TextStyle(
                          fontSize: 30.0,
                        ),
                      ),
                    ),
                  ),
                  title: Text(
                    title[index],
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(subtitle[index]),
                  trailing: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        prices[index],
                        style: const TextStyle(
                            fontSize: 20.0, color: Colors.white),
                      ),
                    ),
                  ),
                );
              }),
        )
      ]),
    );
  }
}
