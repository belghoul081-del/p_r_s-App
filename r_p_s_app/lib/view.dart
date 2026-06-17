import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:r_p_s_app/model.dart';
import 'package:r_p_s_app/widget.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  final PointeModel points = PointeModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        title: Center(child: Text("paper")),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 125,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(40)),
                color: Colors.blue[200],
                border: Border.all(color: Colors.indigo),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Counter(
                        name: 'Player',
                        counter: points.conterPointPlayer,
                      ),
                    ),
                    Container(
                      height: 100, // ارتفاع الخط
                      width: 2, // سمك الخط
                      color: Colors.indigo, // لون الخط
                    ),
                    Flexible(
                      child: Counter(
                        name: 'Computer',
                        counter: points.conterPointComputer,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                // الزر الأول في المنتصف
                ChoiseBotton(text: "rock", points: points, onUpdate: () { setState(() {
                  
                }); }, image: 'assets/images/rock.png',),
                const SizedBox(height: 20), // مسافة عمودية بين الصفوف
                // الصف الثاني يحتوي على الزرين
                Row(
                  mainAxisAlignment: MainAxisAlignment.center, // توسيط الأزرار
                  children: [
                    ChoiseBotton(text: "paper", points: points, onUpdate: () { setState(() {
                  
                }); }, image: 'assets/images/paper.png',),
                    const SizedBox(width: 20), // مسافة أفقية بين الزرين
                    ChoiseBotton(text: "scissors", points: points, onUpdate: () { setState(() {
                  
                }); }, image: 'assets/images/scissors.png',),
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
