// ignore_for_file: avoid_web_libraries_in_flutter
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zeyad_basket/Pages/Welcom_Page.dart';
import 'package:zeyad_basket/items/conter_provider.dart';
import '../items/bottom_Add.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
  var count = Provider.of<counterProvider>(context);
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
                      '${count.counterTeamA}',
                      style: const TextStyle(
                        fontSize: 150,
                      ),
                    ),
                    Bottom(
                      onTap: () {
                        count.aPlus1();
                      },
                      text: 'Add 1 Point',
                      color: const Color(0xff1B4242),
                    ),
                    const SizedBox(height: 16),
                    Bottom(
                      onTap: () {
                        count.aPlus2();
                      },
                      text: 'Add 2 Point',
                      color: const Color(0xff1B4242),
                    ),
                    const SizedBox(height: 16),
                    Bottom(
                      onTap: () {
                        count.aPlus3();
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
                      // '$counterTeamB',
                      '${count.counterTeamB}',
                      style: const TextStyle(
                        fontSize: 150,
                      ),
                    ),
                    Bottom(
                      onTap: () {
                        count.bPlus1();
                      },
                      text: 'Add 1 Point',
                      color: const Color(0xff1B4242),
                    ),
                    const SizedBox(height: 16),
                    Bottom(
                      onTap: () {
                        count.bPlus2();
                      },
                      text: 'Add 2 Point',
                      color: const Color(0xff1B4242),
                    ),
                    const SizedBox(height: 16),
                    Bottom(
                      onTap: () {
                        count.bPlus3();
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
                // setState(
                //   () {
                //     counterTeamA = 0;
                //     counterTeamB = 0;
                //   },
                // );
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
