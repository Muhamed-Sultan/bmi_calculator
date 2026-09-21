import 'package:bmi_calculator/Screens/home_screen.dart';
import 'package:bmi_calculator/Widget/custom_buttoms.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResultScreen extends StatefulWidget {
  final double bmi;

  const ResultScreen({super.key, required this.bmi});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  String get resultText {
    if (widget.bmi < 18.5) {
      return 'Underweight';
    } else if (widget.bmi < 25) {
      return 'Normal';
    } else if (widget.bmi < 30) {
      return 'Overweight';
    } else {
      return 'Obese';
    }
  }

  Color get resultColor {
    if (widget.bmi < 18.5) {
      return Colors.orange;
    } else if (widget.bmi < 25) {
      return const Color(0xff21BF73);
    } else {
      return Colors.red;
    }
  }

  String get description {
    if (widget.bmi < 18.5) {
      return 'You Have a Low Body Weight.';
    } else if (widget.bmi < 25) {
      return 'You Have a Normal Body Weight,\nGood Job.';
    } else if (widget.bmi < 30) {
      return 'You Have a Higher Body Weight.';
    } else {
      return 'You Have a Very High Body Weight.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1C2135),

      appBar: AppBar(
        title: const Text('BMI Calculator'),
        centerTitle: true,
        backgroundColor: const Color(0xff24263B),
        foregroundColor: Colors.white,
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),

          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            
              children: [
            25.verticalSpace,
                const Text(
                  'Your Result',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
            
            25.verticalSpace,
                Container(
                  height: 503.h,
width: double.infinity,            
                  decoration: BoxDecoration(
                    color: const Color(0xff333244),
                    borderRadius: BorderRadius.circular(12),
                  ),
            
                  child: Column(
                    children: [
                      58.verticalSpace,
            
                      Text(
                        resultText,
                        style: TextStyle(
                          color: resultColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
            
                      25.verticalSpace,
            
                      Text(
                        widget.bmi.toStringAsFixed(1),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 48,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
            
                      120.verticalSpace,
            
                      Text(
                        description,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff8B8C9E),
                        ),
                      ),
                    ],
                  ),
                ),
            
                50.verticalSpace,
            
                CustomButtom(
                  text: 'Re - Calculate',
            
                  ontap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const HomeScreen()),
                    );
                  },
            
                  color: const Color(0xffE83D67),
            
                  textcolor: Colors.white,
            
                  textStyle: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
