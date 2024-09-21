// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Sign in`
  String get signIn {
    return Intl.message(
      'Sign in',
      name: 'signIn',
      desc: '',
      args: [],
    );
  }

  /// `Greeting!`
  String get loginGreetingText {
    return Intl.message(
      'Greeting!',
      name: 'loginGreetingText',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with phone`
  String get signInWithPhone {
    return Intl.message(
      'Sign in with phone',
      name: 'signInWithPhone',
      desc: '',
      args: [],
    );
  }

  /// `Email error text should be here`
  String get emailError {
    return Intl.message(
      'Email error text should be here',
      name: 'emailError',
      desc: '',
      args: [],
    );
  }

  /// `Password error text should be here`
  String get passwordError {
    return Intl.message(
      'Password error text should be here',
      name: 'passwordError',
      desc: '',
      args: [],
    );
  }

  /// `or`
  String get or {
    return Intl.message(
      'or',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with Facebook`
  String get signInWithFacebook {
    return Intl.message(
      'Sign in with Facebook',
      name: 'signInWithFacebook',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with Google`
  String get signInWithGoogle {
    return Intl.message(
      'Sign in with Google',
      name: 'signInWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Forgot password?`
  String get forgotPassword {
    return Intl.message(
      'Forgot password?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get dontHaveAccount {
    return Intl.message(
      'Don\'t have an account?',
      name: 'dontHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Create one`
  String get dontHaveAccountCreate {
    return Intl.message(
      'Create one',
      name: 'dontHaveAccountCreate',
      desc: '',
      args: [],
    );
  }

  /// `subscriptionBadgeTitle`
  String get subscriptionBadgeTitle {
    return Intl.message(
      'subscriptionBadgeTitle',
      name: 'subscriptionBadgeTitle',
      desc: '',
      args: [],
    );
  }

  /// `subscriptionBadgeDescription`
  String get subscriptionBadgeDescription {
    return Intl.message(
      'subscriptionBadgeDescription',
      name: 'subscriptionBadgeDescription',
      desc: '',
      args: [],
    );
  }

  /// `subscriptionBadgeSubtitle`
  String get subscriptionBadgeSubtitle {
    return Intl.message(
      'subscriptionBadgeSubtitle',
      name: 'subscriptionBadgeSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `buySubscription`
  String get buySubscription {
    return Intl.message(
      'buySubscription',
      name: 'buySubscription',
      desc: '',
      args: [],
    );
  }

  /// `section`
  String get section {
    return Intl.message(
      'section',
      name: 'section',
      desc: '',
      args: [],
    );
  }

  /// `sectionSubtitle`
  String get sectionSubtitle {
    return Intl.message(
      'sectionSubtitle',
      name: 'sectionSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `lesson`
  String get lesson {
    return Intl.message(
      'lesson',
      name: 'lesson',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the 'subscriptionPaymentDate' key

  /// `language`
  String get language {
    return Intl.message(
      'language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `changePassword`
  String get changePassword {
    return Intl.message(
      'changePassword',
      name: 'changePassword',
      desc: '',
      args: [],
    );
  }

  /// `notifications`
  String get notifications {
    return Intl.message(
      'notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `shareWithFriends`
  String get shareWithFriends {
    return Intl.message(
      'shareWithFriends',
      name: 'shareWithFriends',
      desc: '',
      args: [],
    );
  }

  /// `licenceAgreement`
  String get licenceAgreement {
    return Intl.message(
      'licenceAgreement',
      name: 'licenceAgreement',
      desc: '',
      args: [],
    );
  }

  /// `profile`
  String get profile {
    return Intl.message(
      'profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `plan`
  String get plan {
    return Intl.message(
      'plan',
      name: 'plan',
      desc: '',
      args: [],
    );
  }

  /// `lessons`
  String get lessons {
    return Intl.message(
      'lessons',
      name: 'lessons',
      desc: '',
      args: [],
    );
  }

  /// `favorites`
  String get favorites {
    return Intl.message(
      'favorites',
      name: 'favorites',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'uk'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
