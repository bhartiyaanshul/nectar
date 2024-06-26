import 'package:flutter/material.dart';

enum ButtonType {
  primary,
  icon
}

class PrimaryButton extends StatelessWidget {
  final ButtonType _type;
  final String title;
  Color? color;
  Color? textColor;
  Widget? icon;
  Function onTap;
  PrimaryButton.primary({super.key,required this.title, required this.onTap}) : _type = ButtonType.primary;
  PrimaryButton.icon({super.key,required this.title, required this.color, this.icon, required this.onTap, this.textColor}) : _type = ButtonType.icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // onTap: () => onTap(),
      child: TextButton(
        onPressed: () => onTap(),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color ?? Theme.of(context).primaryColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(19),
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: SizedBox(
            child: _type == ButtonType.icon ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                icon??const SizedBox(),
                Text(title,  style: TextStyle(fontFamily: 'Gilroy', fontSize: 18, color: textColor ?? Color(0xffFFF9FF)),textAlign: TextAlign.center,),
                Opacity(opacity: 0,child: icon??const SizedBox()),
              ],
            ) : SizedBox(width: 300,child: Text(title,  style: const TextStyle(fontFamily: 'Gilroy', fontSize: 18, color: Color(0xffFFF9FF)),textAlign: TextAlign.center,)),

          ),
        ),
      ),
    );
  }
}