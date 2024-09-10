import 'package:flutter/material.dart';

/// A custom widget for displaying text with a highlighted word and different text styles.
class CustomTextWidget extends StatelessWidget {
  /// The complete text to display.
  final String text;

  /// The word within the text to be highlighted.
  final String highlightedText;

  /// The text style for the highlighted word.
  final TextStyle? highlightedWordStyle;

  /// The text style for the regular text.
  final TextStyle? style;

  /// Creates a [CustomTextWidget] to display text with a highlighted word.
  const CustomTextWidget({
    super.key,
    required this.text,
    required this.highlightedText,
    this.highlightedWordStyle,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    List<TextSpan> textSpans = [];

    final List<String> splitParts = text.split(highlightedText);

    for (var i = 0; i < splitParts.length; i++) {
      if (i != 0) {
        textSpans.add(TextSpan(
          text: highlightedText,
          style: highlightedWordStyle,
        ));
      }
      textSpans.add(TextSpan(text: splitParts[i], style: style));
    }

    return RichText(
      text: TextSpan(children: textSpans),
    );
  }
}
