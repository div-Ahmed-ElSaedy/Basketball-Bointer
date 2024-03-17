import 'package:flutter/material.dart';
import 'package:zeyad_basket/Pages/Welcom_Page.dart';
import '../items/bottom_Add.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _basketballState();
}

// ignore: camel_case_types
class _basketballState extends State<Home> {
  int counterTeamA = 0;
  int counterTeamB = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff1B4242),
          titleSpacing: 22,
          title: const Text(
            'Points Counter',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // -------------------------------------------------------------
                // ------------------------>> Colom 2 <<------------------------
                // -------------------------------------------------------------
                Column(
                  children: [
                    Text(
                      myControl_1.text,
                      style: const TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '$counterTeamA',
                      style: const TextStyle(
                        fontSize: 150,
                      ),
                    ),
                    Bottom(
                      onTap: () {
                        setState(
                          () {
                            counterTeamA++;
                          },
                        );
                      },
                      text: 'Add 1 Point',
                      color: const Color(0xff1B4242),
                    ),
                    const SizedBox(height: 16),
                    Bottom(
                      onTap: () {
                        setState(
                          () {
                            counterTeamA += 2;
                          },
                        );
                      },
                      text: 'Add 2 Point',
                      color: const Color(0xff1B4242),
                    ),
                    const SizedBox(height: 16),
                    Bottom(
                      onTap: () {
                        setState(
                          () {
                            counterTeamA += 3;
                          },
                        );
                      },
                      text: 'Add 3 Point',
                      color: const Color(0xff1B4242),
                    ),
                  ],
                ),
                // -------------------------------------------------------------
                // ------------------------>> Devider <<------------------------
                // -------------------------------------------------------------
                const SizedBox(
                  height: 450,
                  child: VerticalDivider(
                    color: Color(0x49000000),
                  ),
                ),
                // -----------------------------------------------------------
                // ------------------------>> Colom 2 <<------------------------
                // -------------------------------------------------------------
                Column(
                  children: [
                    Text(
                      myControl_2.text,
                      style: const TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '$counterTeamB',
                      style: const TextStyle(
                        fontSize: 150,
                      ),
                    ),
                    Bottom(
                      onTap: () {
                        setState(
                          () {
                            counterTeamB++;
                          },
                        );
                      },
                      text: 'Add 1 Point',
                      color: const Color(0xff1B4242),
                    ),
                    const SizedBox(height: 16),
                    Bottom(
                      onTap: () {
                        setState(
                          () {
                            counterTeamB += 2;
                          },
                        );
                      },
                      text: 'Add 2 Point',
                      color: const Color(0xff1B4242),
                    ),
                    const SizedBox(height: 16),
                    Bottom(
                      onTap: () {
                        setState(
                          () {
                            counterTeamB += 3;
                          },
                        );
                      },
                      text: 'Add 3 Point',
                      color: const Color(0xff1B4242),
                    ),
                  ],
                ),
              ],
              // ---------------------------------------------------------------
              // -------------------------->> Reset <<--------------------------
              // ---------------------------------------------------------------
            ),
            const SizedBox(height: 40),
            Bottom(
              onTap: () {
                setState(
                  () {
                    counterTeamA = 0;
                    counterTeamB = 0;
                  },
                );
              },
              text: 'Reset',
              color: const Color(0xffFF004D),
            ),
          ],
        ),
      ),
    );
  }
}
