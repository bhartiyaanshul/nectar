import 'package:flutter/material.dart';

enum ButtonType {
  primary,
  icon
}

class PrimaryButton extends StatelessWidget {
  final ButtonType _type;
  final String title;
  String? color;
  Widget? icon;
  Function onTap;
  PrimaryButton.primary({super.key,required this.title, required this.onTap}) : _type = ButtonType.primary;
  PrimaryButton.icon({super.key,required this.title, required this.color, this.icon, required this.onTap}) : _type = ButtonType.icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: TextButton(
        onPressed: () => onTap(),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Color(int.parse(color ?? '0xff53B175'))),
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
                icon!,
                Text(title,  style: const TextStyle(fontFamily: 'Gilroy', fontSize: 18, color: Color(0xffFFF9FF)),textAlign: TextAlign.center,),
                const SizedBox()
              ],
            ) : SizedBox(width: 300,child: Text(title,  style: const TextStyle(fontFamily: 'Gilroy', fontSize: 18, color: Color(0xffFFF9FF)),textAlign: TextAlign.center,)),

          ),
        ),
      ),
    );
  }
}