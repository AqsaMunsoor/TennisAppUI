import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Stack(
        children: [
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 500,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/3.png'),
                        fit: BoxFit.contain)),
              )),
          Positioned(
              left: 20,
              top: 20,
              child: Row(
                children: [
                  Container(
                    width: 55,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back_ios_new_rounded),
                      color: Colors.black,
                    ),
                  )
                ],
              )),
          Positioned(
            top: 450,
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  // ignore: use_full_hex_values_for_flutter_colors
                  color: Color(0xfff171415),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Men\'s League',
                        style: GoogleFonts.roboto(
                            color: const Color(0xfffffeff),
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Take part in a 2-hour session where you can expect plenty of rallying followed by competitive paint play team singles style. ',
                        style: GoogleFonts.roboto(
                          color: Colors.grey.shade400,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                              width: 90,
                              height: 90,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white12),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Icon(
                                    Icons.calendar_month_rounded,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  Text(
                                    '24 February',
                                    style:
                                        GoogleFonts.roboto(color: Colors.white),
                                  ),
                                ],
                              )),
                          Container(
                              width: 90,
                              height: 90,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white12),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Icon(
                                    Icons.access_time_rounded,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  Text(
                                    '18:00-20:00',
                                    style:
                                        GoogleFonts.roboto(color: Colors.white),
                                  ),
                                ],
                              )),
                          Container(
                              width: 90,
                              height: 90,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white12),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Icon(
                                    Icons.star_border_rounded,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  Text(
                                    'All Levels',
                                    style:
                                        GoogleFonts.roboto(color: Colors.white),
                                  ),
                                ],
                              )),
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        child: TextButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<OutlinedBorder>(
                                const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                              ),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  const Color(0xff016A40)),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Participate \$30',
                              style: GoogleFonts.roboto(
                                  color: Colors.white, fontSize: 20),
                            )),
                      )
                    ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
