import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'auth_notifier.g.dart';

@riverpod
class AuthNotifier extends _$AuthNotifier {
  final _asyncPrefs = SharedPreferencesAsync();
  static const _isLoggedInKey = 'isLoggedIn';

  @override
  FutureOr<bool> build() async {
    await Future.delayed(const Duration(seconds: 1));
    final isLoggedIn = await _asyncPrefs.getBool(_isLoggedInKey);
    return isLoggedIn ?? false;
  }

  Future<void> login() async {
    _asyncPrefs.setBool(_isLoggedInKey, true);
    await update((state) => true);
  }

  Future<void> logout() async {
    _asyncPrefs.setBool(_isLoggedInKey, false);
    await update((state) => false);
  }
}
