extension Ext on String {
  String tr() {
    // This is a placeholder. Replace this with your actual translation lookup logic.
    // For example, if you're using the `intl` package:
    // return Intl.message(this, name: this);

    // Placeholder implementation:
    final translations = {
      'weHaveSentCodeToEmail': 'Enter the code sent to @email',
      // Add more translations here
    };
    return translations[this] ?? this;
  }

  String trParams([Map<String, String> params = const {}]) {
    final translation = tr();

    if (params.isEmpty) {
      return translation;
    }

    // Replace parameters in the translation
    return params.entries.fold(translation, (prev, elem) {
      return prev.replaceAll('@${elem.key}', elem.value);
    });
  }
}
