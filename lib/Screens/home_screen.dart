import 'package:bmi_calculator/Screens/result_screen.dart';
import 'package:bmi_calculator/Widget/custom_buttoms.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int weight = 0;
  int age = 0;
  double height = 150;
  bool isMale = true;

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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),

            child: Column(
              children: [
                20.verticalSpace,

                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = true;
                          });
                        },

                        child: Container(
                          height: 180.h,
                          width: 155.w,

                          decoration: BoxDecoration(
                            color: const Color(0xff24263B),
                            borderRadius: BorderRadius.circular(12),

                            border: Border.all(
                              color: isMale ? Colors.red : Colors.transparent,
                            ),

                            image: const DecorationImage(
                              image: AssetImage('assets/images/M.png'),
                            ),
                          ),

                          child: Container(
                            alignment: Alignment.bottomCenter,
                            padding: const EdgeInsets.only(bottom: 3),

                            child: const Text(
                              'Male',
                              style: TextStyle(
                                color: Color(0xff8B8C9E),
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    10.horizontalSpace,

                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = false;
                          });
                        },

                        child: Container(
                          height: 180.h,
                          width: 155.w,

                          decoration: BoxDecoration(
                            color: const Color(0xff333244),
                            borderRadius: BorderRadius.circular(12),

                            border: Border.all(
                              color: !isMale ? Colors.red : Colors.transparent,
                            ),

                            image: const DecorationImage(
                              image: AssetImage('assets/images/F.png'),
                            ),
                          ),

                          child: Container(
                            alignment: Alignment.bottomCenter,
                            padding: const EdgeInsets.only(bottom: 3),

                            child: const Text(
                              'Female',
                              style: TextStyle(
                                color: Color(0xff8B8C9E),
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

25.verticalSpace,
                Container(
                  height: 210.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xff333244),
                    borderRadius: BorderRadius.circular(12),
                  ),
                
                  child: Column(
                    children: [
27.verticalSpace,                 
                      const Text(
                        'Height',
                        style: TextStyle(
                          color: Color(0xff8B8C9E),
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                
                      5.verticalSpace,
                
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            height.toInt().toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                
                          3.horizontalSpace,
                
                          Text(
                            'cm',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                
                      20.verticalSpace,
                
                      Slider(
                        activeColor: Colors.red,
                        thumbColor: Colors.white,
                        value: height,
                        min: 100,
                        max: 250,
                
                        onChanged: (value) {
                          setState(() {
                            height = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),

                30.verticalSpace,

                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 190.h,
                        width: 155.w,

                        decoration: BoxDecoration(
                          color: const Color(0xff24263B),
                          borderRadius: BorderRadius.circular(12),
                        ),

                        child: Column(
                          children: [
                            15.verticalSpace,

                            Text(
                              'Weight',
                              style: TextStyle(
                                color: Color(0xff8B8C9E),
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                              ),
                            ),

                            5.verticalSpace,

                            Text(
                              '$weight',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.w700,
                              ),
                            ),

                            20.verticalSpace  ,

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (weight > 0) {
                                        weight--;
                                      }
                                    });
                                  },

                                  child: Container(
                                    width: 50.w,
                                    height: 50.h,

                                    decoration: BoxDecoration(
                                      color: const Color(0xff9293A3),
                                      shape: BoxShape.circle,

                                      boxShadow: const [
                                        BoxShadow(
                                          color: Colors.black45,
                                          offset: Offset(0, 4),
                                          blurRadius: 3,
                                        ),
                                      ],
                                    ),

                                    child: const Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                ),

                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },

                                  child: Container(
                                    width: 50.w,
                                    height: 50.h,

                                    decoration: BoxDecoration(
                                      color: const Color(0xff9293A3),
                                      shape: BoxShape.circle,

                                      boxShadow: const [
                                        BoxShadow(
                                          color: Colors.black45,
                                          offset: Offset(0, 4),
                                          blurRadius: 3,
                                        ),
                                      ],
                                    ),

                                    child: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                    10.horizontalSpace,

                    Expanded(
                      child: Container(
                        height: 190.h,
                        width: 155.w,

                        decoration: BoxDecoration(
                          color: const Color(0xff333244),
                          borderRadius: BorderRadius.circular(12),
                        ),

                        child: Column(
                          children: [
                            15.verticalSpace,

                            const Text(
                              'Age',
                              style: TextStyle(
                                color: Color(0xff8B8C9E),
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                              ),
                            ),

                            5.verticalSpace,

                            Text(
                              '$age',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.w700,
                              ),
                            ),

                            20.verticalSpace,

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (age > 0) {
                                        age--;
                                      }
                                    });
                                  },

                                  child: Container(
                                    width: 50.w,
                                    height: 50.h,

                                    decoration: BoxDecoration(
                                      color: const Color(0xff9293A3),
                                      shape: BoxShape.circle,

                                      boxShadow: const [
                                        BoxShadow(
                                          color: Colors.black45,
                                          offset: Offset(0, 4),
                                          blurRadius: 3,
                                        ),
                                      ],
                                    ),

                                    child: const Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                ),

                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      age++;
                                    });
                                  },

                                  child: Container(
                                    width: 50.w,
                                    height: 50.h,

                                    decoration: BoxDecoration(
                                      color: const Color(0xff9293A3),
                                      shape: BoxShape.circle,

                                      boxShadow: const [
                                        BoxShadow(
                                          color: Colors.black45,
                                          offset: Offset(0, 4),
                                          blurRadius: 3,
                                        ),
                                      ],
                                    ),

                                    child: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                30.verticalSpace,

                CustomButtom(
                  text: 'Calculate',

                  ontap: () {
                    double heightInMeter = height / 100;

                    double bmi = weight / (heightInMeter * heightInMeter);

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResultScreen(bmi: bmi),
                      ),
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
