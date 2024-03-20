import 'package:get/get.dart';

ValidInput(String val, min, max, String type) {
  if (type == "username") {
    if (!GetUtils.isUsername(val)) {
      return "Not Valid Username";
    }
  }
  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return "Not Valid Email";
    }
  }

  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(val)) {
      return "Not Valid Phone Number";
    }
  }
  if (val.isEmpty) {
    return "Value Can Not Be Empty";
  }
  if (val.length < min) {
    return "Value Can't Be Less Than $min";
  }
  if (val.length > max) {
    return "Value Can't Be Larger Than $max";
  }
}
