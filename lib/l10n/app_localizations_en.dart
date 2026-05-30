// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'Torino Moda Style';

  @override
  String get loginTitle => 'Login';

  @override
  String get registerTitle => 'Register';

  @override
  String get homeTitle => 'Home';

  @override
  String get continueLabel => 'Continue';

  @override
  String get logoutLabel => 'Logout';

  @override
  String get phase0Placeholder => 'Phase 0 foundation is ready.';

  @override
  String get phoneLabel => 'Phone';

  @override
  String get passwordLabel => 'Password';

  @override
  String get nameLabel => 'Name';

  @override
  String get emailLabelOptional => 'Email (optional)';

  @override
  String get phoneValidation => 'Enter a valid phone number';

  @override
  String get passwordValidation => 'Password is required';

  @override
  String get passwordMinValidation => 'Password must be at least 8 characters';

  @override
  String get nameValidation => 'Name must be at least 2 characters';

  @override
  String get registerPrompt => 'Create an account';

  @override
  String get loginPrompt => 'Already have an account? Log in';

  @override
  String homeWelcome(String name) {
    return 'Welcome, $name';
  }

  @override
  String get productsTitle => 'Products';

  @override
  String get productDetailsTitle => 'Product details';

  @override
  String get searchProducts => 'Search products';

  @override
  String get searchHint => 'Search by name or code';

  @override
  String get searchAction => 'Search';

  @override
  String get searchPrompt => 'Enter a query to search products';

  @override
  String get searchQueryRequired => 'Search query is required';

  @override
  String get noProducts => 'No products found';

  @override
  String get noSearchResults => 'No matching products';

  @override
  String get loadingProducts => 'Loading products...';

  @override
  String get productCodeLabel => 'Product code';

  @override
  String get barcodeLabel => 'Barcode';

  @override
  String get priceLabel => 'Price';

  @override
  String get categoryLabel => 'Category';

  @override
  String get brandLabel => 'Brand';

  @override
  String get variantsTitle => 'Variants';

  @override
  String get noVariants => 'No variants available';

  @override
  String get colorLabel => 'Color';

  @override
  String get sizeLabel => 'Size';

  @override
  String get cartTitle => 'Cart';

  @override
  String get loadingCart => 'Loading cart...';

  @override
  String get emptyCartMessage => 'Your cart is empty';

  @override
  String get clearCartLabel => 'Clear cart';

  @override
  String get subtotalLabel => 'Subtotal';

  @override
  String get unitPriceLabel => 'Unit price';

  @override
  String get lineTotalLabel => 'Line total';

  @override
  String get quantityLabel => 'Quantity';

  @override
  String get removeItemLabel => 'Remove item';

  @override
  String get addToCartLabel => 'Add to cart';

  @override
  String get addedToCartMessage => 'Added to cart';

  @override
  String get proceedToCheckoutLabel => 'Proceed to checkout';

  @override
  String get checkoutTitle => 'Checkout';

  @override
  String get checkoutIntro => 'Choose a delivery address to continue.';

  @override
  String get manageAddressesLabel => 'Manage addresses';

  @override
  String get continueToReviewLabel => 'Continue to review';

  @override
  String get selectAddressTitle => 'Delivery address';

  @override
  String get loadingAddresses => 'Loading addresses...';

  @override
  String get noAddressesMessage => 'No saved addresses. Add one to continue.';

  @override
  String get addAddressLabel => 'Add address';

  @override
  String get cancelLabel => 'Cancel';

  @override
  String get loadingDelivery => 'Loading delivery options...';

  @override
  String get regionLabel => 'Region';

  @override
  String get areaLabel => 'Area';

  @override
  String get deliveryFeeLabel => 'Delivery fee';

  @override
  String get defaultAddressBadge => 'Default';

  @override
  String get regionRequired => 'Select a region';

  @override
  String get areaRequired => 'Select a delivery area';

  @override
  String get addressLine1Label => 'Address line 1';

  @override
  String get addressLine2Label => 'Address line 2 (optional)';

  @override
  String get addressRequired => 'Address is required';

  @override
  String get cityLabel => 'City (optional)';

  @override
  String get addressLabelOptional => 'Label (optional)';

  @override
  String get recipientNameLabel => 'Recipient name (optional)';

  @override
  String get recipientPhoneLabel => 'Recipient phone (optional)';

  @override
  String get setDefaultAddressLabel => 'Set as default address';

  @override
  String get saveAddressLabel => 'Save address';

  @override
  String get checkoutReviewTitle => 'Review order';

  @override
  String get selectAddressFirst => 'Select a delivery address first';

  @override
  String get changeLabel => 'Change';

  @override
  String get loadingQuote => 'Loading quote...';

  @override
  String get retryLabel => 'Retry';

  @override
  String get discountLabel => 'Discount';

  @override
  String get totalLabel => 'Total';

  @override
  String get placeOrderLabel => 'Place order';

  @override
  String get orderCreatedTitle => 'Order created';

  @override
  String get paymentPendingMessage =>
      'Your order was created. Payment is pending — use the payment page when available or check order status later.';

  @override
  String get orderNumberLabel => 'Order number';

  @override
  String get orderStatusLabel => 'Order status';

  @override
  String get paymentStatusLabel => 'Payment status';

  @override
  String get merchantReferenceLabel => 'Reference';

  @override
  String get checkoutUrlLabel => 'Payment URL';

  @override
  String get backToProductsLabel => 'Back to products';

  @override
  String get viewCartLabel => 'View cart';

  @override
  String get viewOrderLabel => 'View order';

  @override
  String get ordersTitle => 'My orders';

  @override
  String get orderDetailsTitle => 'Order details';

  @override
  String get loadingOrders => 'Loading orders...';

  @override
  String get loadingOrderDetails => 'Loading order details...';

  @override
  String get noOrdersMessage => 'You have no orders yet';

  @override
  String get orderDateLabel => 'Date';

  @override
  String get orderItemsTitle => 'Items';

  @override
  String get paymentStatusSectionTitle => 'Payment status';

  @override
  String get loadingPaymentStatus => 'Loading payment status...';

  @override
  String get refreshPaymentStatusLabel => 'Refresh payment status';

  @override
  String get shippingInfoTitle => 'Shipping';

  @override
  String get paymentInfoTitle => 'Payment';

  @override
  String get profileTitle => 'Profile';

  @override
  String get loadingProfile => 'Loading profile...';

  @override
  String get editProfileLabel => 'Edit profile';

  @override
  String get saveProfileLabel => 'Save profile';

  @override
  String get navProductsLabel => 'Products';

  @override
  String get navCartLabel => 'Cart';

  @override
  String get navOrdersLabel => 'Orders';

  @override
  String get navProfileLabel => 'Profile';

  @override
  String get editAddressLabel => 'Edit address';

  @override
  String get deleteAddressLabel => 'Delete address';

  @override
  String get noAddressesManageMessage => 'No saved addresses yet.';

  @override
  String get browseProductsLabel => 'Browse products';

  @override
  String get openPaymentUrlLabel => 'Open payment page';

  @override
  String get orderStatusAwaitingPayment => 'Awaiting payment';

  @override
  String get orderStatusPaid => 'Paid';

  @override
  String get orderStatusProcessing => 'Processing';

  @override
  String get orderStatusShipped => 'Shipped';

  @override
  String get orderStatusDelivered => 'Delivered';

  @override
  String get orderStatusCancelled => 'Cancelled';

  @override
  String get paymentStatusPending => 'Pending';

  @override
  String get paymentStatusPaid => 'Paid';

  @override
  String get paymentStatusFailed => 'Failed';

  @override
  String get paymentStatusExpired => 'Expired';

  @override
  String get barcodeLookupTitle => 'Barcode lookup';

  @override
  String get barcodeLookupHint => 'Enter a product barcode to find the item.';

  @override
  String get barcodeLookupAction => 'Look up product';

  @override
  String get barcodeInputHint => 'Enter barcode';

  @override
  String get barcodeRequired => 'Barcode is required';

  @override
  String get barcodeTooLong => 'Barcode is too long';

  @override
  String get checkingPaymentStatusLabel => 'Checking payment status...';

  @override
  String get lastCheckedLabel => 'Last checked';

  @override
  String get networkError => 'Network error';

  @override
  String get timeoutError => 'Request timeout';

  @override
  String get unauthorizedError => 'Unauthorized';

  @override
  String get forbiddenError => 'Forbidden';

  @override
  String get notFoundError => 'Not found';

  @override
  String get rateLimitError => 'Too many requests';

  @override
  String get serverError => 'Server error';

  @override
  String get unknownError => 'Something went wrong';

  @override
  String get invalidPaymentUrl => 'Invalid payment URL';

  @override
  String get couldNotOpenPaymentUrl => 'Could not open payment URL';
}
