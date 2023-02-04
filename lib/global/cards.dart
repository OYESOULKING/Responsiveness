import 'package:flutter/material.dart';
import 'package:practice/global/global.dart';

class HomeScreenCard extends StatelessWidget {
  const HomeScreenCard({Key? key, required this.title, required this.iconData, this.onTap}) : super(key: key);
  final IconData iconData;
  final String title;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(smallPadding),
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            padding: EdgeInsets.all(normalPadding),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(smallRadius),
              gradient: LinearGradient(colors: [Colors.purpleAccent.withAlpha(50), Colors.indigo, Colors.indigo], begin: Alignment.topLeft, end: Alignment.bottomRight),
              boxShadow: const [
                BoxShadow(color: Colors.black54, offset: Offset(3, 5), blurRadius: 3),
                BoxShadow(color: Colors.white54, offset: Offset(3, 5), blurRadius: 2),
              ],
            ),
            child: LayoutBuilder(
              builder: (context, boxConstraints) {
                return boxConstraints.maxWidth <= 97?Padding(
                  padding: EdgeInsets.all(smallPadding),
                  child: Card(iconData: iconData,title: title,),
                ):Card(iconData: iconData,title: title,);
              },
            ),
          ),
        ),
      ),
    );
  }
}
class Card extends StatelessWidget {
  const Card({Key? key, required this.iconData, required this.title}) : super(key: key);
  final IconData iconData;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 6,
          child: FittedBox(
            child: Icon(iconData, color: Colors.white),
          ),
        ),
        const Spacer(
          flex: 2,
        ),
        Expanded(
          flex: 2,
          child: FittedBox(
            child: Text(
              title,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white),
            ),
          ),
        ),
        const Spacer(
          flex: 1,
        ),
      ],
    );
  }
}

