import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../BottomNav_Provider.dart';
class BottomNavPrimary extends StatelessWidget {
  const BottomNavPrimary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final BottomNavProvider = Provider.of<BottomNav_Provider>(context);
    return  Container(
        height: 110,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 70,
              blurStyle: BlurStyle.outer,
            ),
          ],
        ),
        width: double.infinity,
        child: Padding(
        padding: EdgeInsets.only(left: 60, right: 60, bottom: 30),
    child: Container(
    decoration: BoxDecoration(
    color: Colors.grey.shade200,
    borderRadius: BorderRadius.circular(40),
    ),
    child: ClipRRect(
    borderRadius: BorderRadius.circular(40),
    child: Padding(
    padding: const EdgeInsets.only(top: 3),
    child: BottomNavigationBar(
    backgroundColor: Colors.grey.shade200,
    iconSize: 30,
    selectedItemColor: Colors.black,
    currentIndex: BottomNavProvider.index,
    onTap: (value) => BottomNavProvider.ontap(value),
    items: <BottomNavigationBarItem>[
    const BottomNavigationBarItem(
    icon: Icon(Icons.chat_rounded), label: ""),
    const BottomNavigationBarItem(
    icon:
    Icon(CupertinoIcons.rectangle_stack_person_crop),
    label: ""),
    ],
    ),
    ),
    ),
    ),
    ),
    );
  }
}
