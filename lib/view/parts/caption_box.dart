import 'package:flutter/material.dart';

class CaptionBox extends StatelessWidget {
  const CaptionBox({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 24),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black26),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: Localizations.localeOf(context).languageCode == 'ar'
              ? null
              : 'Suwannaphum',
        ),
      ),
    );
  }
}
