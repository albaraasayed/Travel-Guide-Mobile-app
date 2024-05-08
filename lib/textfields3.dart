import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class TextFields3 extends StatelessWidget {
  final String tag;
  final String hint;
  final IconData icon;

  const TextFields3({
    super.key,
    required this.tag,
    required this.hint,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          tag,
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
              fontSize: 18,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          width: double.infinity,
          child: TextField(
            readOnly: true,
            decoration: InputDecoration(
              suffixIcon: Icon(icon),
              hintText: hint,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              hintStyle: const TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
              fillColor: const Color.fromRGBO(255, 255, 255, 1),
              filled: true,
              contentPadding: const EdgeInsets.all(20),
            ),
          ),
        ),
      ],
    );
  }
}
