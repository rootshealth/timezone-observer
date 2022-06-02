import 'package:flutter_test/flutter_test.dart';
import 'package:timezone_change_observer/timezone_change_observer.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('Observe timezone change', () async {
    final stream = TimezoneChangeObserver.init;
    expectLater(stream, isA<Stream>());
  });
}
