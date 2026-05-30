import 'package:flutter_test/flutter_test.dart';
import 'package:torino_moda_style_f/core/network/api/api_envelope_parser.dart';
import 'package:torino_moda_style_f/core/network/error/app_error.dart';

void main() {
  group('ApiEnvelopeParser', () {
    test('parses successful envelope', () {
      final envelope = ApiEnvelopeParser.parse<String>(
        {
          'success': true,
          'message': 'OK',
          'data': 'token-123',
          'meta': null,
          'errors': null,
        },
        decodeData: (json) => json.toString(),
      );

      expect(envelope.success, isTrue);
      expect(envelope.data, 'token-123');
    });

    test('maps validation envelope to ValidationError', () {
      final envelope = ApiEnvelopeParser.parse<dynamic>(
        {
          'success': false,
          'message': 'Validation failed',
          'data': null,
          'meta': null,
          'errors': {
            'phone': ['The phone field is required.'],
          },
        },
        decodeData: (json) => json,
      );

      final error = ApiEnvelopeParser.envelopeToAppError(envelope, statusCode: 422);
      expect(error, isA<ValidationError>());
      expect((error as ValidationError).fieldErrors['phone'], isNotEmpty);
    });

    test('maps 429 to RateLimitError', () {
      final envelope = ApiEnvelopeParser.parse<dynamic>(
        {
          'success': false,
          'message': 'Too many requests.',
          'data': null,
          'meta': null,
          'errors': null,
        },
        decodeData: (json) => json,
      );

      final error = ApiEnvelopeParser.envelopeToAppError(envelope, statusCode: 429);
      expect(error, isA<RateLimitError>());
    });
  });
}
