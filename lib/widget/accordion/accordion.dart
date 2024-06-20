import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Accordion extends StatefulWidget {
  final String title;
  final String content;
  const Accordion({super.key, required this.title, required this.content});

  @override
  State<Accordion> createState() => _AccordionState();
}

class _AccordionState extends State<Accordion> {
  bool _customTileExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpansionTile(
          shape: const Border(),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              widget.title == 'Review'
                  ? SvgPicture.asset('assets/icons/stars.svg')
                  : SizedBox(),
              widget.title == 'Nuitrition'
                  ? Chip(
                    visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
                    labelPadding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0 ),
                    padding: const EdgeInsets.all(0),
                    side: BorderSide.none,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    backgroundColor: const Color(0xffF2F3F2),
                    labelStyle: const TextStyle(fontSize: 9, fontFamily: 'gilroy', color: Color(0xff7C7C7C)),
                    label: const Text('100gr')
                  )
                  : const SizedBox(),
              const SizedBox(width: 10),
              Material(
                child: _customTileExpanded
                    ? SvgPicture.asset('assets/icons/arrow_down.svg')
                    : SvgPicture.asset('assets/icons/arrow_right.svg'),
              ),
            ],
          ),
          backgroundColor: Colors.white,
          title: Text(widget.title,
              style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontFamily: 'gilroy',
                  fontSize: 16)),
          children: <Widget>[
            ListTile(
              title: Text(widget.content,
                  style: const TextStyle(
                      fontWeight: FontWeight.w100,
                      fontFamily: 'gilroy',
                      fontSize: 13,
                      color: Color(0xff7C7C7C))),
            ),
          ],
          onExpansionChanged: (bool expanded) {
            setState(() {
              _customTileExpanded = expanded;
            });
          },
        ),
      ],
    );
  }
}
