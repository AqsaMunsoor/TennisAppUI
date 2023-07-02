import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_swiper_plus/flutter_swiper_plus.dart';
import 'package:tennisapp_ui/secondscreen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  List<String> emojis = [
    '👍',
    '💪',
    '😎',
  ];
  List<String> text = [
    'Simple',
    'Average',
    'Experience',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: use_full_hex_values_for_flutter_colors
      backgroundColor: const Color(0xfff171415),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Choose your level',
            style: GoogleFonts.roboto(
                color: const Color(0xfffffeff),
                fontSize: 25,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 300,
            child: Expanded(
              child: Swiper(
                viewportFraction: 0.7,
                scale: 0.9,
                scrollDirection: Axis.horizontal,
                itemCount: emojis.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 200.0,
                    decoration: BoxDecoration(
                      color: const Color(0xfffffeff),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    margin: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          emojis[index],
                          style: const TextStyle(
                            fontSize: 30.0,
                          ),
                        ),
                        Text(
                          text[index],
                          style: const TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(const Color(0xff016A40)),
              shape: MaterialStateProperty.all<OutlinedBorder>(
                const CircleBorder(),
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SecondScreen(),
                ),
              );
            },
            child: const SizedBox(
              width: 70.0,
              height: 70.0,
              child: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 40.0,
                color: Colors.white,
              ),
            ),
          ),
          Text(
            'Skip for now',
            style: GoogleFonts.roboto(
                color: const Color(0xfffffeff),
                fontSize: 20,
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
