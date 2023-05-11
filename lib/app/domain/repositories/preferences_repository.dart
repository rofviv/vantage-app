import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class PreferencesRepository {
  String? get token;
  bool get isNew;
  bool get isDark;
  Locale? get locale;
  void saveToken(String token);
  Future<void> changeNew(bool value);
  Future<void> saveLocale(Locale locale);
  void clearSession();
}

const tokenKey = "app-token-key";
const isNewKey = "is-new-key-app";
const isDarkKey = "is-theme-dark-app";
const localeLanguageCodeKey = 'localeLanguageCode';
const localeScriptCodeKey = 'localeScriptCode';
const localeCountryCodeKey = 'localeConuntryCode';

class PreferencesRepositoryImpl extends PreferencesRepository {
  final SharedPreferences _preferences;

  PreferencesRepositoryImpl(this._preferences);

  @override
  String? get token {
    return _preferences.getString(tokenKey);
  }

  @override
  bool get isNew => _preferences.getBool(isNewKey) ?? true;

  @override
  bool get isDark => _preferences.getBool(isDarkKey) ?? false;

  @override
  Future<void> changeNew(bool value) {
    return _preferences.setBool(isNewKey, value);
  }

  @override
  void saveToken(String token) async {
    await _preferences.setString(tokenKey, token);
  }

  @override
  Locale? get locale {
    final languageCode = _preferences.getString(localeLanguageCodeKey);
    final scriptCode = _preferences.getString(localeScriptCodeKey);
    final countryCode = _preferences.getString(localeCountryCodeKey);

    if (languageCode != null) {
      return Locale.fromSubtags(
        languageCode: languageCode,
        scriptCode: scriptCode,
        countryCode: countryCode,
      );
    }
    return null;
  }

  @override
  Future<void> saveLocale(Locale locale) async {
    await _preferences.setString(localeLanguageCodeKey, locale.languageCode);
    await _preferences.setString(
        localeScriptCodeKey, locale.scriptCode ?? locale.languageCode);
    await _preferences.setString(
        localeCountryCodeKey, locale.countryCode ?? locale.languageCode);
  }

  @override
  void clearSession() {
    _preferences.remove(tokenKey);
  }
}
