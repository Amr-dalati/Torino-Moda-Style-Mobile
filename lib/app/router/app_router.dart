import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';



import '../../features/checkout/domain/checkout_result.dart';

import '../../features/auth/presentation/register_page.dart';

import '../../features/cart/presentation/cart_page.dart';

import '../../features/auth/presentation/login_page.dart';

import '../../features/checkout/presentation/addresses_management_page.dart';

import '../../features/checkout/presentation/checkout_address_page.dart';

import '../../features/checkout/presentation/checkout_hub_page.dart';

import '../../features/checkout/presentation/checkout_result_page.dart';

import '../../features/checkout/presentation/checkout_review_page.dart';

import '../../features/orders/presentation/order_detail_page.dart';

import '../../features/orders/presentation/orders_list_page.dart';

import '../../features/products/presentation/barcode_lookup_page.dart';
import '../../features/products/presentation/product_detail_page.dart';

import '../../features/products/presentation/product_search_page.dart';

import '../../features/products/presentation/products_list_page.dart';

import '../../features/profile/presentation/profile_page.dart';

import '../pages/splash_page.dart';

import '../shell/main_shell_scaffold.dart';

import 'auth_redirect.dart';

import 'auth_refresh_listenable.dart';

import 'route_names.dart';

import 'router_keys.dart';



class AppRouter {

  AppRouter({

    required AuthRefreshListenable authRefresh,

    required this.onLogoutRequested,

  }) : _authRefresh = authRefresh;



  final AuthRefreshListenable _authRefresh;

  final Future<void> Function() onLogoutRequested;



  late final GoRouter router = GoRouter(

    navigatorKey: rootNavigatorKey,

    refreshListenable: _authRefresh,

    initialLocation: RouteNames.splash,

    routes: [

      GoRoute(

        path: RouteNames.splash,

        name: 'splash',

        builder: (context, state) => const SplashPage(),

      ),

      GoRoute(

        path: RouteNames.login,

        name: 'login',

        builder: (context, state) => const LoginPage(),

      ),

      GoRoute(

        path: RouteNames.register,

        name: 'register',

        builder: (context, state) => const RegisterPage(),

      ),

      GoRoute(

        path: RouteNames.home,

        name: 'home',

        redirect: (context, state) => RouteNames.products,

      ),

      GoRoute(

        path: RouteNames.checkout,

        name: 'checkout',

        parentNavigatorKey: rootNavigatorKey,

        builder: (context, state) => const CheckoutHubPage(),

        routes: [

          GoRoute(

            path: 'address',

            name: 'checkoutAddress',

            builder: (context, state) => const CheckoutAddressPage(),

          ),

          GoRoute(

            path: 'review',

            name: 'checkoutReview',

            builder: (context, state) {

              final addressId = state.extra is int ? state.extra as int : null;

              return CheckoutReviewPage(addressId: addressId);

            },

          ),

          GoRoute(

            path: 'result',

            name: 'checkoutResult',

            builder: (context, state) {

              final result = state.extra;

              if (result is! CheckoutResult) {

                return const CheckoutHubPage();

              }

              return CheckoutResultPage(result: result);

            },

          ),

        ],

      ),

      StatefulShellRoute.indexedStack(

        builder: (context, state, navigationShell) {

          return MainShellScaffold(navigationShell: navigationShell);

        },

        branches: [

          StatefulShellBranch(

            routes: [

              GoRoute(

                path: RouteNames.products,

                name: 'products',

                builder: (context, state) => const ProductsListPage(),

                routes: [

                  GoRoute(

                    path: 'search',

                    name: 'productSearch',

                    parentNavigatorKey: rootNavigatorKey,

                    builder: (context, state) {

                      final q = state.uri.queryParameters['q'] ?? '';

                      return ProductSearchPage(initialQuery: q);

                    },

                  ),

                  GoRoute(

                    path: 'barcode',

                    name: 'productBarcode',

                    parentNavigatorKey: rootNavigatorKey,

                    builder: (context, state) => const BarcodeLookupPage(),

                  ),

                  GoRoute(

                    path: ':id',

                    name: 'productDetail',

                    parentNavigatorKey: rootNavigatorKey,

                    builder: (context, state) {

                      final id = int.tryParse(state.pathParameters['id'] ?? '');

                      if (id == null) {

                        return const ProductsListPage();

                      }

                      final variantId = state.extra is int ? state.extra as int : null;

                      return ProductDetailPage(

                        productId: id,

                        initialVariantId: variantId,

                      );

                    },

                  ),

                ],

              ),

            ],

          ),

          StatefulShellBranch(

            routes: [

              GoRoute(

                path: RouteNames.cart,

                name: 'cart',

                builder: (context, state) => const CartPage(),

              ),

            ],

          ),

          StatefulShellBranch(

            routes: [

              GoRoute(

                path: RouteNames.orders,

                name: 'orders',

                builder: (context, state) => const OrdersListPage(),

                routes: [

                  GoRoute(

                    path: ':id',

                    name: 'orderDetail',

                    parentNavigatorKey: rootNavigatorKey,

                    builder: (context, state) {

                      final id = int.tryParse(state.pathParameters['id'] ?? '');

                      if (id == null) {

                        return const OrdersListPage();

                      }

                      return OrderDetailPage(orderId: id);

                    },

                  ),

                ],

              ),

            ],

          ),

          StatefulShellBranch(

            routes: [

              GoRoute(

                path: RouteNames.profile,

                name: 'profile',

                builder: (context, state) => ProfilePage(

                  onLogout: onLogoutRequested,

                ),

                routes: [

                  GoRoute(

                    path: 'addresses',

                    name: 'profileAddresses',

                    parentNavigatorKey: rootNavigatorKey,

                    builder: (context, state) => const AddressesManagementPage(),

                  ),

                ],

              ),

            ],

          ),

        ],

      ),

    ],

    redirect: (context, state) => authRedirect(

          auth: _authRefresh.auth,

          location: state.matchedLocation,

        ),

    errorBuilder: (context, state) => Scaffold(

      appBar: AppBar(),

      body: Center(child: Text(state.error.toString())),

    ),

  );

}


