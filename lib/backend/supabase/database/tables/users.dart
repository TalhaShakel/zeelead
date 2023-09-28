import '../database.dart';

class UsersTable extends SupabaseTable<UsersRow> {
  @override
  String get tableName => 'users';

  @override
  UsersRow createRow(Map<String, dynamic> data) => UsersRow(data);
}

class UsersRow extends SupabaseDataRow {
  UsersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsersTable();

  String? get firstName => getField<String>('first_name');
  set firstName(String? value) => setField<String>('first_name', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get lastName => getField<String>('last_name');
  set lastName(String? value) => setField<String>('last_name', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get bio => getField<String>('bio');
  set bio(String? value) => setField<String>('bio', value);

  String? get imageProfile => getField<String>('image_profile');
  set imageProfile(String? value) => setField<String>('image_profile', value);

  String? get city => getField<String>('city');
  set city(String? value) => setField<String>('city', value);

  String? get province => getField<String>('province');
  set province(String? value) => setField<String>('province', value);

  String? get country => getField<String>('country');
  set country(String? value) => setField<String>('country', value);
}
