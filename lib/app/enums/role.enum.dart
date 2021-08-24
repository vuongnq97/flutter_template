part of 'enums.dart';

abstract class UserRoleEnum {
  static const int Admin = 1;
  static const int SubAdmin = 2;
  static const int User = 3;

  static String getName(int value) {
    switch (value) {
      case Admin:
        return "Admin";
      case SubAdmin:
        return "SubAdmin";
      case User:
        return "User";
      default:
        return '';
    }
  }
}
