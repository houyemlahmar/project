import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final IconData? iconData;
  const PrimaryButton(
      {Key? key,
      required this.iconData,
      required this.title,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          textStyle: const TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          minimumSize: const Size.fromHeight(70),
        ),
        child: Row(
          children: <Widget>[
            Icon(
              iconData,
              color: Colors.pink,
              size: 34,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(title, style: TextStyle(fontSize: 18, color: Colors.black)),
          ],
        ),
        onPressed: onPressed,
      ),
    );
  }
}
