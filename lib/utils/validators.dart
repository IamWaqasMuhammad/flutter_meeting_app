// lib/utils/validator.dart

class Validator {
  /// Validate Email
  static String? validateEmail(String? value) {
    if (value == null || value.trim().isEmpty) {
      return "Email is required";
    }

    // Basic email regex
    final emailRegExp = RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$");
    if (!emailRegExp.hasMatch(value.trim())) {
      return "Enter a valid email";
    }

    return null;
  }

  /// Validate Password with strong password rules
  static String? validatePassword(String? value) {
    if (value == null || value.trim().isEmpty) {
      return "Password is required";
    }

    // At least 1 uppercase, 1 number, 1 special character
    final strongPass = RegExp(r'^(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*]).{6,}$');

    if (!strongPass.hasMatch(value.trim())) {
      return "Password must include uppercase, number & symbol";
    }

    return null;
  }

  /// Validate Confirm Password
  static String? validateConfirmPassword(
    String? password,
    String? confirmPassword,
  ) {
    if (confirmPassword == null || confirmPassword.trim().isEmpty) {
      return "Confirm your password";
    }

    if (password != confirmPassword) {
      return "Passwords do not match";
    }

    return null;
  }
}
