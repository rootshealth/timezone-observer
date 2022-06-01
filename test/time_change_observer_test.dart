import 'package:flutter_test/flutter_test.dart';
import 'package:time_change_observer/time_change_observer.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('Observe time change', () async {
    final stream = TimeChangeObserver.init;
    expectLater(stream, isA<Stream>());
  });
}
