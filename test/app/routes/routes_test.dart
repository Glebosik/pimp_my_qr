import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pimp_my_qr/app/app.dart';
import 'package:pimp_my_qr/app/routes/routes.dart';
import 'package:pimp_my_qr/authentication/login/login.dart';
import 'package:pimp_my_qr/home/home.dart';

void main() {
  group('onGenerateAppViewPages', () {
    test('returns [HomePage] when authenticated', () {
      expect(
        onGenerateAppViewPages(AppStatus.authenticated, []),
        [isA<MaterialPage>().having((p) => p.child, 'child', isA<HomePage>())],
      );
    });

    test('returns [LoginPage] when unauthenticated', () {
      expect(
        onGenerateAppViewPages(AppStatus.unauthenticated, []),
        [isA<MaterialPage>().having((p) => p.child, 'child', isA<LoginPage>())],
      );
    });
  });
}
