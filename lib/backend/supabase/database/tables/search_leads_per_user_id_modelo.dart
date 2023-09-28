import '../database.dart';

class SearchLeadsPerUserIdModeloTable
    extends SupabaseTable<SearchLeadsPerUserIdModeloRow> {
  @override
  String get tableName => 'Search Leads per User Id - modelo';

  @override
  SearchLeadsPerUserIdModeloRow createRow(Map<String, dynamic> data) =>
      SearchLeadsPerUserIdModeloRow(data);
}

class SearchLeadsPerUserIdModeloRow extends SupabaseDataRow {
  SearchLeadsPerUserIdModeloRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SearchLeadsPerUserIdModeloTable();

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get fullName => getField<String>('full_name');
  set fullName(String? value) => setField<String>('full_name', value);

  String? get firstName => getField<String>('first_name');
  set firstName(String? value) => setField<String>('first_name', value);

  String? get lastName => getField<String>('last_name');
  set lastName(String? value) => setField<String>('last_name', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get companyName => getField<String>('company_name');
  set companyName(String? value) => setField<String>('company_name', value);

  String? get website => getField<String>('Website');
  set website(String? value) => setField<String>('Website', value);

  String? get position => getField<String>('position');
  set position(String? value) => setField<String>('position', value);

  String? get phone => getField<String>('phone');
  set phone(String? value) => setField<String>('phone', value);

  String? get idUser => getField<String>('id_user');
  set idUser(String? value) => setField<String>('id_user', value);

  String? get idSearch => getField<String>('id_search');
  set idSearch(String? value) => setField<String>('id_search', value);
}
