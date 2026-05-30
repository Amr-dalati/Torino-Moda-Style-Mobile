import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';



import 'package:torino_moda_style_f/app/app.dart';

import 'package:torino_moda_style_f/features/cart/application/cart_providers.dart';

import 'package:torino_moda_style_f/features/cart/data/repositories/cart_repository.dart';

import 'package:torino_moda_style_f/features/auth/application/auth_controller.dart';

import 'helpers/fake_cart_remote.dart';

import 'package:torino_moda_style_f/features/auth/domain/auth_session.dart';



class _TestAuthController extends AuthController {

  @override

  AuthSession build() => AuthSession.unauthenticated;



  @override

  Future<void> restoreSession() async {}

}



void main() {

  testWidgets('App builds and redirects unauthenticated users to login', (tester) async {

    await tester.pumpWidget(

      ProviderScope(

        overrides: [

          authControllerProvider.overrideWith(_TestAuthController.new),

          cartRepositoryProvider.overrideWithValue(

            CartRepository(remote: const FakeEmptyCartRemote()),

          ),

        ],

        child: const App(),

      ),

    );



    await tester.pumpAndSettle();



    expect(find.text('Login'), findsWidgets);

  });

}


