import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity,
  Color background = Colors.blue,
  double borderWidth = double.infinity,
  double radius = 0.0,
   required Color color,
  required Color colors,
  required Function function,
  required String text,
}) =>
    Center(
      child: Container(
        width:width,
        height: 45.0,
        child: MaterialButton(
      onPressed: ()
      {
        function();
      },
      child: Text(
        text.toUpperCase(),
        style: TextStyle(
          color: color,
        ),
      ),

        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            radius,
          ),
          color: background,
          border: Border.all(
            color: colors,
            width: borderWidth,
          ),
        ),
      ),
    );
Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  Function? onSubmit,
  Function? onChange,
  Function? suffixPressed,
  bool isPassword = false,
  required Function validate,
  required String label,
  required IconData prefix,
  IconData? suffix,
}) => Padding(
  padding: const EdgeInsets.all(5.0),
  child: Container(
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(7.0),
    ),


    child: TextFormField(
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      onFieldSubmitted: onSubmit as void Function(String)?,
      onChanged: onChange as void Function(String)?,
      validator: validate as String? Function(String?)?,
      style: TextStyle(
        fontSize: 12.0,
      ),
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(
          prefix,
          size: 15.0,
        ),
        suffixIcon: suffix != null ? IconButton(
          onPressed: ()
          {
            suffixPressed!();
          },
          icon: Icon(
            suffix,
          ),
        ) : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7.0),
            borderSide: BorderSide(color: Color(0xFF248176),
              width: 3.0,
            ),


        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF248176),
            width: 3.0,
          ),
          borderRadius: BorderRadius.circular(7.0),
        ),
      ),
    ),
  ),
);