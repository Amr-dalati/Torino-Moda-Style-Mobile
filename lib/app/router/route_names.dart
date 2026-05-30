class RouteNames {
  static const splash = '/';
  static const login = '/login';
  static const register = '/register';
  static const home = '/home';
  static const products = '/products';
  static const productSearch = '/products/search';
  static const productBarcode = '/products/barcode';
  static const cart = '/cart';
  static const checkout = '/checkout';
  static const checkoutAddress = '/checkout/address';
  static const checkoutReview = '/checkout/review';
  static const checkoutResult = '/checkout/result';
  static const orders = '/orders';
  static const profile = '/profile';
  static const profileAddresses = '/profile/addresses';

  static String productDetailPath(int id) => '/products/$id';
  static String orderDetailPath(int id) => '/orders/$id';
}
