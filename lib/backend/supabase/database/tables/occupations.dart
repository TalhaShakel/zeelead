import '../database.dart';

class OccupationsTable extends SupabaseTable<OccupationsRow> {
  @override
  String get tableName => 'Occupations';

  @override
  OccupationsRow createRow(Map<String, dynamic> data) => OccupationsRow(data);
}

class OccupationsRow extends SupabaseDataRow {
  OccupationsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => OccupationsTable();

  String? get occupations => getField<String>('Occupations');
  set occupations(String? value) => setField<String>('Occupations', value);
}
