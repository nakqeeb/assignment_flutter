import 'package:assignment_flutter/screens/home/components/floating_button/custom_floating_button.dart';
import 'package:assignment_flutter/screens/home/components/part_eight/part_eight.dart';
import 'package:assignment_flutter/screens/home/components/part_eleven/part_eleven.dart';
import 'package:assignment_flutter/screens/home/components/part_five/part_five.dart';
import 'package:assignment_flutter/screens/home/components/part_four/part_four.dart';
import 'package:assignment_flutter/screens/home/components/part_nine/part_nine.dart';
import 'package:assignment_flutter/screens/home/components/part_seven/part_seven.dart';
import 'package:assignment_flutter/screens/home/components/part_six/part_six.dart';
import 'package:assignment_flutter/screens/home/components/part_ten/part_ten.dart';
import 'package:assignment_flutter/screens/home/components/part_two/part_two_swiper.dart';
import 'package:assignment_flutter/screens/home/components/part_one/part_one.dart';
import 'package:assignment_flutter/screens/home/components/part_three/part_three.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController? _scrollViewController;
  bool isScrollingDown = false;

  @override
  void initState() {
    super.initState();
    _scrollViewController = ScrollController();
    _scrollViewController!.addListener(() {
      if (_scrollViewController!.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (!isScrollingDown) {
          isScrollingDown = true;
          setState(() {});
        }
      }

      if (_scrollViewController!.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (isScrollingDown) {
          isScrollingDown = false;
          setState(() {});
        }
      }
    });
  }

  @override
  void dispose() {
    _scrollViewController!.dispose();
    _scrollViewController!.removeListener(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.5,
                child: const PartOne(),
              ),
              const SizedBox(
                height: 15,
              ),
              PartTwoSwiper(),
              const PartThree(),
              const PartFour(),
              const PartFive(),
              const PartSix(),
              PartSeven(),
              const PartEight(),
              const PartNine(),
              const PartTen(),
              const PartEleven(),
            ],
          ),
        ),
        floatingActionButton: const CustomFloatingButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      ),
    );
  }
}
