import 'package:drift/drift.dart';
// ignore: deprecated_member_use
import 'package:drift/web.dart';

LazyDatabase createLazyDatabase() {
  return LazyDatabase(() async => WebDatabase('persona_travel.db'));
}
