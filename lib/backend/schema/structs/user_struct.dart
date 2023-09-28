// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends BaseStruct {
  UserStruct({
    bool? isRegistration,
    String? category,
  })  : _isRegistration = isRegistration,
        _category = category;

  // "isRegistration" field.
  bool? _isRegistration;
  bool get isRegistration => _isRegistration ?? false;
  set isRegistration(bool? val) => _isRegistration = val;
  bool hasIsRegistration() => _isRegistration != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) => _category = val;
  bool hasCategory() => _category != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        isRegistration: data['isRegistration'] as bool?,
        category: data['category'] as String?,
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? UserStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'isRegistration': _isRegistration,
        'category': _category,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'isRegistration': serializeParam(
          _isRegistration,
          ParamType.bool,
        ),
        'category': serializeParam(
          _category,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
        isRegistration: deserializeParam(
          data['isRegistration'],
          ParamType.bool,
          false,
        ),
        category: deserializeParam(
          data['category'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserStruct &&
        isRegistration == other.isRegistration &&
        category == other.category;
  }

  @override
  int get hashCode => const ListEquality().hash([isRegistration, category]);
}

UserStruct createUserStruct({
  bool? isRegistration,
  String? category,
}) =>
    UserStruct(
      isRegistration: isRegistration,
      category: category,
    );
