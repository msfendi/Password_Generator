import 'package:random_password_generator/random_password_generator.dart';

class Generate {
  Generate({
    required this.lowerCase,
    required this.upperCase,
    required this.symbol,
    required this.number,
    required this.length,
  });
  final bool lowerCase;
  final bool upperCase;
  final bool symbol;
  final bool number;
  final int length;
  final password = RandomPasswordGenerator();

  String generatePassword() {
    String newPassword = password.randomPassword(
        letters: lowerCase,
        uppercase: upperCase,
        specialChar: symbol,
        numbers: number,
        passwordLength: length.toDouble());
    return newPassword;
  }
}
