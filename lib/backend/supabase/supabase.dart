import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://oyvaxbgsxqmkociwxfyr.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im95dmF4YmdzeHFta29jaXd4ZnlyIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTAyMTAxNTgsImV4cCI6MjAwNTc4NjE1OH0.A9GAw3Er_AtK46Bv1X1mwa3H2W9Q8Y50KocYwLwZTAo';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
