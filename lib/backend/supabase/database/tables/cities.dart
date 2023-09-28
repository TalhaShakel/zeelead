import '../database.dart';

class CitiesTable extends SupabaseTable<CitiesRow> {
  @override
  String get tableName => 'Cities';

  @override
  CitiesRow createRow(Map<String, dynamic> data) => CitiesRow(data);
}

class CitiesRow extends SupabaseDataRow {
  CitiesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CitiesTable();

  String? get city => getField<String>('City');
  set city(String? value) => setField<String>('City', value);

  String? get stateShort => getField<String>('State short');
  set stateShort(String? value) => setField<String>('State short', value);

  String? get stateFull => getField<String>('State full');
  set stateFull(String? value) => setField<String>('State full', value);

  String? get county => getField<String>('County');
  set county(String? value) => setField<String>('County', value);

  String? get cityAlias => getField<String>('City alias');
  set cityAlias(String? value) => setField<String>('City alias', value);
}
