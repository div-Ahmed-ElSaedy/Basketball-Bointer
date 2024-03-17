// ignore_for_file: must_be_immutable, file_names, unnecessary_null_comparison
import 'package:flutter/material.dart';
import 'package:zeyad_basket/Pages/home.dart';
import 'package:zeyad_basket/items/bottom_Add.dart';
import '../items/Team_feild.dart';

TextEditingController myControl_2 = TextEditingController();
TextEditingController myControl_1 = TextEditingController();

class WelcomPage extends StatelessWidget {
  const WelcomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(height: 70),
          const Image(
            height: 300,
            image: AssetImage('assets/1.jpg'),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
            child: Text(
              'Please Enter the name of the firt team and the second team',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
          TeamFeild(myControl: myControl_1, hintText: 'Firt Team '),
          const SizedBox(height: 20),
          TeamFeild(myControl: myControl_2, hintText: 'Second Team'),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Bottom(
              onTap: () {
                if (myControl_1.text != '' && myControl_2.text != '') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const Home();
                      },
                    ),
                  );
                }
              },
              text: 'Continue',
              color: const Color(0xff1B4242),
            ),
          ),
        ],
      ),
    );
  }
}
