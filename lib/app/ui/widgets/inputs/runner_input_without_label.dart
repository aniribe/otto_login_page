import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:otto_login_page/app/ui/shared/otto_login_colors.dart';

class OttoInputFieldWithoutLabel extends StatelessWidget {
  final bool readOnly;
  final String initialValue;
  final String hintText;
  final Color hintTextColor;
  final TextInputType keyboardType;
  final bool obscureText;
  final TextEditingController controller;
  final Function validator;
  final Function onSaved;
  final bool autofocus;
  final Color borderColor;
  final Function onFieldSubmitted;
  final Function onTap;
  final double bottomPadding;
  final Function onChanged;
  final Color textColor;

  OttoInputFieldWithoutLabel(
      {this.initialValue,
      this.hintText,
      this.hintTextColor = OttoColors.lightGrey,
      this.keyboardType,
      this.obscureText = false,
      this.controller,
      this.validator,
      this.borderColor = OttoColors.lightGrey,
      this.autofocus = false,
      this.onSaved,
      this.onFieldSubmitted,
      this.onTap,
      this.bottomPadding = 0,
      this.onChanged,
      this.textColor,
      this.readOnly = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: OttoColors.lightGrey,
      readOnly: readOnly,
      style: TextStyle(color: textColor, fontSize: 17),
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      initialValue: initialValue,
      autofocus: autofocus,
      decoration: InputDecoration(
        isDense: true,
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 16,
          height: 2,
          fontWeight: FontWeight.w400,
          color: hintTextColor,
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        enabledBorder:
            UnderlineInputBorder(borderSide: BorderSide(color: borderColor)),
        focusedBorder:
            UnderlineInputBorder(borderSide: BorderSide(color: borderColor)),
      ),
      showCursor: true,
      validator: validator,
      onSaved: onSaved,
      onFieldSubmitted: onFieldSubmitted,
      textInputAction: TextInputAction.go,
      onTap: onTap,
      onChanged: onChanged,
    );
  }
}
