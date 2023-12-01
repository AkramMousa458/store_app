import 'package:flutter/material.dart';

class CustomButtonWidget extends StatefulWidget {
  const CustomButtonWidget(
      {super.key, required this.text, required this.onTap});

  final String text;
  final VoidCallback onTap;

  @override
  State<CustomButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<CustomButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
        margin: const EdgeInsets.only(right: 8, left: 8, top: 15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: Colors.black,
        ),
        child: Text(
          widget.text,
          style: const TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }
}
