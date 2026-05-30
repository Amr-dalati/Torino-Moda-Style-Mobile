import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:torino_moda_style_f/core/localization/status_labels.dart';
import 'package:torino_moda_style_f/l10n/app_localizations.dart';

void main() {
  group('StatusLabels', () {
    late AppLocalizations en;
    late AppLocalizations ar;

    setUp(() async {
      en = lookupAppLocalizations(const Locale('en'));
      ar = lookupAppLocalizations(const Locale('ar'));
    });

    test('maps order statuses in English', () {
      expect(StatusLabels.orderStatus(en, 'awaiting_payment'), 'Awaiting payment');
      expect(StatusLabels.orderStatus(en, 'shipped'), 'Shipped');
      expect(StatusLabels.orderStatus(en, 'unknown_code'), 'unknown_code');
    });

    test('maps payment statuses in Arabic', () {
      expect(StatusLabels.paymentStatus(ar, 'pending'), 'معلق');
      expect(StatusLabels.paymentStatus(ar, 'paid'), 'مدفوع');
    });
  });
}
