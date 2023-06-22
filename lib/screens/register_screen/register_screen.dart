import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:services_app/consts/consts.dart';
import 'package:services_app/screens/login_screen/login_screen.dart';
import 'package:services_app/widgets/button_widget.dart';
import 'package:services_app/widgets/text_form_field_widget.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController? phoneNumberController;

  TextEditingController? idController;

  TextEditingController? locationController;

  TextEditingController? nameController;

  @override
  Widget build(BuildContext context) {
    bool isLoading = false;
    return Form(
      key: formKey,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 40.h,
                ),
                Center(
                  child: Text(
                    'انشاء حساب',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 32),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Text(
                        'الأسم',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                ),
                CustomTextFormField(
                  controller: nameController,
                  type: TextInputType.name,
                  hint: 'الأسم بالكامل',
                  textDirection: TextDirection.rtl,
                  onChange: (String) {},
                  validation: (value) {
                    if (value!.isEmpty) {
                      return 'يجب ادخال قيمة ';
                    }
                  },
                ),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Text(
                        'الرقم القومي',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                ),
                CustomTextFormField(
                  controller: idController,
                  type: TextInputType.number,
                  hint: 'يجب أن يتكون من 14 رقم',
                  textDirection: TextDirection.rtl,
                  onChange: (vsl) {},
                  validation: (val) {
                    if (val!.isEmpty || val.length < 14 || val.length > 14) {
                      return 'يجب ادخال 14 رقم';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20.h,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.09,
                    width: MediaQuery.of(context).size.width * 0.5,
                    decoration: BoxDecoration(
                        color: kPrimaryColor,
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      children: [
                        Icon(Icons.upload),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            ' صورة الرقم القومي',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 18.h,
                ),
                Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Text(
                      'رقم الهاتف',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 60.h,
                      width: 76.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: kPrimaryColor, width: 2),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                              height: 30,
                              width: 28,
                              child:
                                  Image.asset('assets/images/egypt_logo.png')),
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
                        height: 65.h,
                        width: 274.w,
                        child: CustomTextFormField(
                          controller: phoneNumberController,
                          type: TextInputType.number,
                          hint: 'يجب أن يتكون من 10 ارقام',
                          textDirection: TextDirection.ltr,
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
                            color: Colors.black,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
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
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 65.h,
                        width: 274.w,
                        child: CustomTextFormField(
                          controller: locationController,
                          type: TextInputType.streetAddress,
                          hint: 'ادخل محل أقامتك هنا',
                          textDirection: TextDirection.rtl,
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
                Center(
                  child: CustomButon(
                    textColor: Colors.black,
                    buttonColor: kPrimaryColor,
                    text: 'التسجيل',
                    isLoading: isLoading,
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ));
                      } else {}
                    },
                  ),
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ),
                              (route) => false);
                        },
                        child: Text(
                          'تسجيل الدخول',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 17.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        'لديك حساب بالفعل ؟',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
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
