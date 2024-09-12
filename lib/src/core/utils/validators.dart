import 'package:in_ride/src/core/utils/utils.dart';

String? emailValidator(String? value) {
  if (value?.isEmpty ?? true) {
    return 'pleaseEnterYourEmailAddress';
  } else if (!InRideUtils.isEmail(value!)) {
    return 'pleaseEnterAValidEmailAddress';
  }
  return null;
}

/// Password Validator
String? passwordValidator(String? value) {
  if (value?.isEmpty ?? true) {
    return 'pleaseEnterYourPassword';
  } else if (value!.length < 8) {
    return 'passwordMustBeAtLeast8Characters';
  } else if (!InRideUtils.hasMatch(value, r'[A-Z]')) {
    return 'passwordMustContainAtLeastOneUppercaseLetter';
  } else if (!InRideUtils.hasMatch(value, r'[a-z]')) {
    return 'passwordMustContainAtLeastOneLowercaseLetter';
  } else if (!InRideUtils.hasMatch(value, r'[0-9]')) {
    return 'passwordMustContainAtLeastOneNumber';
  } else if (!InRideUtils.hasMatch(value, r'[!@#$%^&*(),.?":{}|<>]')) {
    return 'passwordMustContainAtLeastOneSpecialCharacter';
  }
  return null;
}

String? fullNameValidator(String? value) {
  if (value?.isEmpty ?? true) {
    return 'Please Enter Your Name';
  }
  if (value!.length < 3 || !RegExp(r'^[a-zA-Z ]+$').hasMatch(value)) {
    return value.length < 3
        ? 'Name Must Be At Least 3 Characters'
        : 'Name Must Contain Only Letters';
  }
  var name = value
      .split(' ')
      .map((e) => e.trim())
      .where((element) => element.isNotEmpty)
      .toList();
  if (name.length < 2) {
    return 'Please Enter Your FullName';
  }
  return null;
}
