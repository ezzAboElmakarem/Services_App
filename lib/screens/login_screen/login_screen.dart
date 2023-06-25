import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:services_app/consts/consts.dart';
import 'package:services_app/screens/home_screen/home_screen_nav_bar.dart';
import 'package:services_app/screens/register_screen/register_screen.dart';
import 'package:services_app/widgets/button_widget.dart';
import 'package:services_app/widgets/text_form_field_widget.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController? phoneNumberController;

  TextEditingController? locationController;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    bool isLoading = false;
    return Scaffold(
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height * 1.1,
            width: MediaQuery.of(context).size.width * 1.5,
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/background.png',
                  height: MediaQuery.of(context).size.height * 1.2,
                  fit: BoxFit.fill,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      bottom: 25.h, left: 25.w, right: 25.w, top: 60.h),
                  child: Container(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/test_logo.png'),
                        SizedBox(
                          height: 15.h,
                        ),
                        Text(
                          'أستقدم أفضل عمالة من أجل خدماتك ',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 50.h,
                        ),
                        Row(
                          textDirection: TextDirection.rtl,
                          children: [
                            Text(
                              'رقم الهاتف',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 60.h,
                              width: 76.w,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: kPrimaryColor, width: 2),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                      height: 30,
                                      width: 28,
                                      child: Image.asset(
                                          'assets/images/egypt_logo.png')),
                                  const SizedBox(
                                    width: 1,
                                  ),
                                  Text(
                                    '+20',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: SizedBox(
                                width: 274.w,
                                child: CustomTextFormField(
                                  controller: phoneNumberController,
                                  errorColor: Colors.white,
                                  type: TextInputType.number,
                                  hint: 'يجب أن يتكون من 10 ارقام',
                                  textDirection: TextDirection.ltr,
                                  //prefixText: '+20  |  ',
                                  validation: (val) {
                                    if (val!.isEmpty ||
                                        val.length < 10 ||
                                        val.length > 10) {
                                      return 'يجب ادخال 10 رقم';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Row(
                            textDirection: TextDirection.rtl,
                            children: [
                              Text(
                                'أضافة عنوان',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 70,
                                height: 50,
                                decoration: ShapeDecoration(
                                  color: Color(0xFFFFD700),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                ),
                                child: Icon(
                                  Icons.my_location_outlined,
                                  size: 30,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: SizedBox(
                                //   height: 65.h,
                                width: 274.w,
                                child: CustomTextFormField(
                                  controller: locationController,
                                  type: TextInputType.streetAddress,
                                  hint: 'ادخل محل أقامتك هنا',
                                  textDirection: TextDirection.rtl,
                                  /*   prefixIcon: IconButton(
                                      style: ButtonStyle(
                                          backgroundColor: MaterialStateProperty.all(
                                              const Color(0xffFFD700))),
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.my_location_outlined,
                                        color: Colors.black,
                                      )),
                                */
                                  onChange: null,
                                  validation: null,
                                  prefixText: '',
                                  suffixIcon: null,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        CustomButon(
                          textColor: Colors.black,
                          buttonColor: kPrimaryColor,
                          text: 'تسجيل الدخول',
                          isLoading: isLoading,
                          onTap: () {
                            if (formKey.currentState!.validate()) {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ));
                            } else {}
                          },
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(
                                  builder: (context) => RegisterScreen(),
                                ),
                                (route) => false);
                          },
                          child: const Text(
                            '  انشاء حساب ',
                            style: TextStyle(
                                color: Color(0xffFFD700),
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
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
