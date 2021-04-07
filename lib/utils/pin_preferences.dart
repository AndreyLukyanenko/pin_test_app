// import 'package:shared_preferences/shared_preferences.dart';

// import '../models.dart';

// class PinPreferences {
//   static const _createdUserPinKey = 'created-user-pin';
//   static const _confirmedUserPinKey = 'confirmed-user-pin';
//   static const _authUserPinKey = 'auth-user-pin';

//   Future savePin(PinData pinData) async {
//     final _preferences = await SharedPreferences.getInstance();
//     await _preferences.setString(_createdUserPinKey, pinData.createPin);
//     await _preferences.setString(_confirmedUserPinKey, pinData.confirmPin);
//     await _preferences.setString(_authUserPinKey, pinData.authPin);

//     print("Save settings");
//   }
// }
