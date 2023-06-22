import 'package:flutter/material.dart';
import 'package:services_app/consts/consts.dart';

Widget CustomTextFormField({
  @required TextEditingController? controller,
  required TextInputType? type,
  @required String? hint,
  required textDirection,
  Widget? prefixIcon,
  String? prefixText,
  Widget? suffixIcon,
  @required Function(String)? onChange,
  Color? errorColor,
  bool ispassword = false,
  required String? Function(String?)? validation,
}) {
  return TextFormField(
    textDirection: textDirection,
    obscureText: ispassword,
    onChanged: onChange,
    controller: controller,
    validator: validation,
    keyboardType: type,
    decoration: InputDecoration(
      //  contentPadding: EdgeInsets.fromLTRB(10, 20, 10, 20),
      errorStyle: TextStyle(
        color: errorColor,
      ),
      hintStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      hintTextDirection: TextDirection.rtl,
      prefixText: prefixText,
      prefixStyle: const TextStyle(
          color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
      filled: true,
      fillColor: Colors.white,
      hintText: hint,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xffFFD700),
          width: 2,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xffFFD700),
          width: 2,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      disabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xffFFD700),
          width: 2,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      border: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xffFFD700),
          width: 2,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
    ),
  );
}
