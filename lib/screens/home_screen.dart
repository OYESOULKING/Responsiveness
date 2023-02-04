import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:practice/global/back_ground.dart';
import 'package:practice/global/button.dart';
import 'package:practice/global/global.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final double registerButtonWidth = 200;
  final double fingerPrintIconSize = 100;
  final double microPhoneIconSize = 110;
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: BackGround(
        child: Padding(
          padding: EdgeInsets.only(bottom: largePadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child:Align(
                  alignment: Alignment.bottomCenter,
                  child: Icon(FontAwesomeIcons.microphone,size: microPhoneIconSize,color: Colors.white),
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Welcome To',
                          style: textTheme.headlineSmall!.copyWith(color: Colors.white),
                        ),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Music',
                                style: textTheme.headlineLarge!.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: 'App',
                                style: textTheme.headlineLarge!.copyWith(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    CustomButton(
                      onTap: () {

                      },
                      child: Text('Login',style: textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w300),),
                    ),
                    CustomButton(
                      onTap: () {
                      },
                      buttonWidth: registerButtonWidth,
                      child: Text('Register',style: textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w300),),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Or quick login \n with Touch ID',
                      style: textTheme.bodyLarge!.copyWith(color: Colors.white),
                    ),
                    Icon(Icons.fingerprint, size: fingerPrintIconSize, color: Colors.white),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
