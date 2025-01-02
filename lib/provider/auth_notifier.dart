import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_notifier.g.dart';

@riverpod
class AuthNotifier extends _$AuthNotifier {
  @override
  FutureOr<bool> build() => false;

  Future<void> login() async {
    await update((state) => true);
  }
}
