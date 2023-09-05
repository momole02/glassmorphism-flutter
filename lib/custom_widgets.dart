import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final bool primary;
  const CustomButton({
    super.key,
    required this.text,
    this.primary = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(25),
        color: primary
            ? Colors.purple.shade600.withOpacity(0.5)
            : Colors.transparent,
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

class CustomInput extends StatelessWidget {
  final String? hint;
  final bool password;
  const CustomInput({super.key, this.password = false, this.hint});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: password,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: Colors.grey.shade300),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: const BorderSide(color: Colors.white)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: const BorderSide(color: Colors.white)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: const BorderSide(color: Colors.white)),
        disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: const BorderSide(color: Colors.white)),
      ),
    );
  }
}
