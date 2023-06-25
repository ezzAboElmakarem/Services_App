import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget HoursBottomSheet() {
  return Container(
    width: 393.w,
    height: 716.h,
    child: Stack(
      children: [
        Positioned(
          left: 0,
          top: 2.h,
          child: Container(
            width: 393.w,
            height: 716.h,
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
          top: 48.h,
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
          top: 101.h,
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
                  left: 49,
                  top: 31,
                  child: Container(
                    width: 64.w,
                    height: 64.h,
                    child: Image.asset('assets/images/cleaning 1.png',
                        fit: BoxFit.fill),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 207.w,
          top: 305.h,
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
                  top: 33.h,
                  child: Container(
                    width: 64.w,
                    height: 64.h,
                    child: Image.asset('assets/images/plumbing 1.png',
                        fit: BoxFit.fill),
                  ),
                ),
                Positioned(
                  left: 49.w,
                  top: 119.h,
                  child: Text(
                    'السباكة',
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
          left: 27.w,
          top: 101.h,
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
                  left: 48.w,
                  top: 31.h,
                  child: Container(
                    width: 64.w,
                    height: 64.h,
                    child: Image.asset('assets/images/room-service 1.png',
                        fit: BoxFit.fill),
                  ),
                ),
                Positioned(
                  left: 48.w,
                  top: 119.h,
                  child: Text(
                    'الضيافة',
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
          left: 27.w,
          top: 305.h,
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
                  left: 48.w,
                  top: 33.h,
                  child: Container(
                    width: 64.w,
                    height: 64.h,
                    child: Image.asset('assets/images/electric-charge 1.png',
                        fit: BoxFit.fill),
                  ),
                ),
                Positioned(
                  left: 48.w,
                  top: 118.h,
                  child: Text(
                    'الكهرباء',
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
          left: 207.w,
          top: 509.h,
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
                  top: 33.h,
                  child: Container(
                    width: 64.w,
                    height: 64.h,
                    child: Image.asset('assets/images/carpentry 1.png',
                        fit: BoxFit.fill),
                  ),
                ),
                Positioned(
                  left: 54.w,
                  top: 110.h,
                  child: Text(
                    'النجارة',
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
          left: 27.w,
          top: 509.h,
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
                  left: 48.w,
                  top: 33.h,
                  child: Container(
                    width: 64.w,
                    height: 64.h,
                    child: Image.asset('assets/images/paint-roller 1.png',
                        fit: BoxFit.fill),
                  ),
                ),
                Positioned(
                  left: 54.w,
                  top: 110.h,
                  child: Text(
                    'الطلاء',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color.fromARGB(144, 0, 0, 0),
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
      ],
    ),
  );
}
