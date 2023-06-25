import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget MonthBottomSheet() {
  return Container(
    width: 393.w,
    height: 536.h,
    child: Stack(
      children: [
        Positioned(
          left: 0,
          top: 0,
          child: Container(
            width: 393.w,
            height: 538.h,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: 118.w,
          top: 46.h,
          child: Text(
            'حدد نوع الخدمة',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontFamily: 'Tajawal',
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Positioned(
          left: 207.w,
          top: 125.h,
          child: Container(
            width: 160.w,
            height: 154.h,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    width: 160.w,
                    height: 154.h,
                    decoration: ShapeDecoration(
                      color: Color(0xFFF3F3F3),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 49.w,
                  top: 119.h,
                  child: Text(
                    'النظافة',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Tajawal',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Positioned(
                  left: 49.w,
                  top: 31.h,
                  child: Container(
                    width: 64.w,
                    height: 64.h,
                    child: Image.asset(
                      'assets/images/cleaning 1.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 27.w,
          top: 125.h,
          child: Container(
            width: 160.w,
            height: 154.h,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    width: 160.w,
                    height: 154.h,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 160.w,
                            height: 154.h,
                            decoration: ShapeDecoration(
                              color: Color(0xFFF3F3F3),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 57.w,
                          top: 119.h,
                          child: Text(
                            'سائق',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'Tajawal',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 48.w,
                  top: 31.h,
                  child: Container(
                    width: 64.w,
                    height: 64.h,
                    child: Image.asset('assets/images/steering-wheel 1.png',
                        fit: BoxFit.fill),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 207.w,
          top: 329.h,
          child: Container(
            width: 160.w,
            height: 154.h,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    width: 160.w,
                    height: 154.h,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 160.w,
                            height: 154.h,
                            decoration: ShapeDecoration(
                              color: Color(0xFFF3F3F3),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 61.w,
                          top: 119.h,
                          child: Text(
                            'طباخ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'Tajawal',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 49.w,
                  top: 33.h,
                  child: Container(
                    width: 64.w,
                    height: 64.h,
                    child: Image.asset(
                      'assets/images/chef-hat (1) 1.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 27.w,
          top: 329.h,
          child: Container(
            width: 160.w,
            height: 154.h,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    width: 160.w,
                    height: 154.h,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 160.w,
                            height: 154.h,
                            decoration: ShapeDecoration(
                              color: Color(0xFFF3F3F3),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 59.w,
                          top: 119.h,
                          child: Text(
                            'مربية',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'Tajawal',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 48.w,
                  top: 33.h,
                  child: Container(
                    width: 64.w,
                    height: 64.h,
                    child: Image.asset('assets/images/clean-house 1.png',
                        fit: BoxFit.fill),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
