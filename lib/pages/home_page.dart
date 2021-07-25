import 'package:flutter/material.dart';
import 'package:flutter_basic/theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        body: SafeArea(
            child: Center(
                child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Text('Profile Picture',
                  style: TextStyle(color: primary, fontSize: 20, fontWeight: FontWeight.w600) //textStyle
                  ), //text
              SizedBox(
                height: 50,
              ),
              Image.asset(
                'assets/images/primary.png',
                width: 140,
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Anne Margaritha',
                style: TextStyle(color: primary, fontSize: 18, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                'UX Designer',
                style: TextStyle(
                  color: secondary,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Wrap(
                spacing: 38,
                runSpacing: 40,
                children: [
                  Image.asset(
                    'assets/images/item1.png',
                    width: 80,
                  ),
                  Image.asset(
                    'assets/images/item2.png',
                    width: 80,
                  ),
                  Image.asset(
                    'assets/images/item3.png',
                    width: 80,
                  ),
                  Image.asset(
                    'assets/images/item4.png',
                    width: 80,
                  ),
                  Image.asset(
                    'assets/images/item5.png',
                    width: 80,
                  ),
                  Image.asset(
                    'assets/images/item6.png',
                    width: 80,
                  ),
                ],
              ), //wrap
              SizedBox(
                height: 70,
              ),
              Container(
                width: 224,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        context: context,
                        backgroundColor: white,
                        builder: (context) {
                          return Container(
                            height: 290,
                            color: Colors.transparent,
                            padding: EdgeInsets.symmetric(
                              vertical: 50,
                            ),
                            child: Column(
                              children: [
                                Text(
                                  'Update Photo',
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  'You are only able to change\nthis profile picture once',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: secondary,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Container(
                                  width: 224,
                                  height: 55,
                                  child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                          primary: accent,
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
                                      child: Text(
                                        'Continue',
                                        style: TextStyle(fontSize: 16, color: white),
                                      )),
                                )
                              ],
                            ),
                          );
                        });
                  },
                  style: ElevatedButton.styleFrom(
                      primary: white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
                  child: Text(
                    'Update Profiler',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: primary),
                  ),
                ),
              ),
              SizedBox(
                height: 70,
              )
            ], //children
          ), //column
        )) //center
            ) // safeArea
        ); //scafold
  } //build
} //StatelessWidget
//changed
