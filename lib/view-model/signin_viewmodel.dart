class SigninViewmodel {

  String? validateInput(String value, String fieldName) {
    if (value.isEmpty) {
      return '$fieldName cannot be empty.';
    } else if (fieldName == 'Email' && !value.contains('@')) {
      return 'Invalid email format.';
    } else if (fieldName == 'Password' && value.length < 6) {
      return 'Password must be at least 6 characters long.';
    }
    // Add more validation rules as needed
    return null; // No errors found
  }

}