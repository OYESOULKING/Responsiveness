import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:practice/global/cards.dart';
import 'package:practice/global/custom_bottom_navigation_bar.dart';
import 'package:practice/global/global.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Text('Vestimate', style: textTheme.headlineMedium!.copyWith(color: Colors.indigo,fontWeight: FontWeight.bold)),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(normalPadding),
                child: Container(
                  padding: EdgeInsets.all(smallPadding),
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Container(
                    padding: EdgeInsets.all(normalPadding),
                    decoration: BoxDecoration(color: Colors.black.withAlpha(10), borderRadius: BorderRadius.circular(smallRadius)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FittedBox(
                            child: Text('Choose your area', style: textTheme.labelLarge!.copyWith(color: Colors.indigo,fontWeight: FontWeight.bold))),
                        Expanded(
                          child: Row(
                            children: const [
                              /// Custom Made Widget
                              HomeScreenCard(title: 'Buying', iconData: FontAwesomeIcons.opencart,),
                              HomeScreenCard(title: 'Selling', iconData: FontAwesomeIcons.shop),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: const [
                              HomeScreenCard(title: 'Trades', iconData: FontAwesomeIcons.tradeFederation),
                              HomeScreenCard(title: 'Videos', iconData: CupertinoIcons.play_circle),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: const [
                              HomeScreenCard(title: 'Deals', iconData: FontAwesomeIcons.handshake),
                              HomeScreenCard(title: 'Case Study', iconData: FontAwesomeIcons.bookOpen),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
