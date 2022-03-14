import 'package:env_test/environment.dart';
import 'package:env_test/main_common.dart';

Future<void> main() async {
  await mainCommon(Environment.prod);
}
