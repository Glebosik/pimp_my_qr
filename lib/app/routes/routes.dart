import 'package:flutter/widgets.dart';
import 'package:pimp_my_qr/app/app.dart';
import 'package:pimp_my_qr/authentication/login/login.dart';
import 'package:pimp_my_qr/home/home.dart';

List<Page> onGenerateAppViewPages(AppStatus state, List<Page<dynamic>> pages) {
  switch (state) {
    case AppStatus.authenticated:
      return [HomePage.page()];
    case AppStatus.unauthenticated:
    default:
      return [LoginPage.page()];
  }
}