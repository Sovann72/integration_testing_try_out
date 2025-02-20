import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:integration_testing_try_out/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group("end to end testing", () async {
    testWidgets("verify that it load properly", (it) async {
      app.main();
      await it.pumpAndSettle();

      await Future.delayed(const Duration(seconds: 5));
    });
  });
}
