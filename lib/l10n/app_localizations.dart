import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en'),
  ];

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'Torino Moda Style'**
  String get appName;

  /// No description provided for @loginTitle.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get loginTitle;

  /// No description provided for @registerTitle.
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get registerTitle;

  /// No description provided for @homeTitle.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get homeTitle;

  /// No description provided for @continueLabel.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueLabel;

  /// No description provided for @logoutLabel.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logoutLabel;

  /// No description provided for @phase0Placeholder.
  ///
  /// In en, this message translates to:
  /// **'Phase 0 foundation is ready.'**
  String get phase0Placeholder;

  /// No description provided for @phoneLabel.
  ///
  /// In en, this message translates to:
  /// **'Phone'**
  String get phoneLabel;

  /// No description provided for @passwordLabel.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get passwordLabel;

  /// No description provided for @nameLabel.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get nameLabel;

  /// No description provided for @emailLabelOptional.
  ///
  /// In en, this message translates to:
  /// **'Email (optional)'**
  String get emailLabelOptional;

  /// No description provided for @phoneValidation.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid phone number'**
  String get phoneValidation;

  /// No description provided for @passwordValidation.
  ///
  /// In en, this message translates to:
  /// **'Password is required'**
  String get passwordValidation;

  /// No description provided for @passwordMinValidation.
  ///
  /// In en, this message translates to:
  /// **'Password must be at least 8 characters'**
  String get passwordMinValidation;

  /// No description provided for @nameValidation.
  ///
  /// In en, this message translates to:
  /// **'Name must be at least 2 characters'**
  String get nameValidation;

  /// No description provided for @registerPrompt.
  ///
  /// In en, this message translates to:
  /// **'Create an account'**
  String get registerPrompt;

  /// No description provided for @loginPrompt.
  ///
  /// In en, this message translates to:
  /// **'Already have an account? Log in'**
  String get loginPrompt;

  /// No description provided for @homeWelcome.
  ///
  /// In en, this message translates to:
  /// **'Welcome, {name}'**
  String homeWelcome(String name);

  /// No description provided for @productsTitle.
  ///
  /// In en, this message translates to:
  /// **'Products'**
  String get productsTitle;

  /// No description provided for @productDetailsTitle.
  ///
  /// In en, this message translates to:
  /// **'Product details'**
  String get productDetailsTitle;

  /// No description provided for @searchProducts.
  ///
  /// In en, this message translates to:
  /// **'Search products'**
  String get searchProducts;

  /// No description provided for @searchHint.
  ///
  /// In en, this message translates to:
  /// **'Search by name or code'**
  String get searchHint;

  /// No description provided for @searchAction.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get searchAction;

  /// No description provided for @searchPrompt.
  ///
  /// In en, this message translates to:
  /// **'Enter a query to search products'**
  String get searchPrompt;

  /// No description provided for @searchQueryRequired.
  ///
  /// In en, this message translates to:
  /// **'Search query is required'**
  String get searchQueryRequired;

  /// No description provided for @noProducts.
  ///
  /// In en, this message translates to:
  /// **'No products found'**
  String get noProducts;

  /// No description provided for @noSearchResults.
  ///
  /// In en, this message translates to:
  /// **'No matching products'**
  String get noSearchResults;

  /// No description provided for @loadingProducts.
  ///
  /// In en, this message translates to:
  /// **'Loading products...'**
  String get loadingProducts;

  /// No description provided for @productCodeLabel.
  ///
  /// In en, this message translates to:
  /// **'Product code'**
  String get productCodeLabel;

  /// No description provided for @barcodeLabel.
  ///
  /// In en, this message translates to:
  /// **'Barcode'**
  String get barcodeLabel;

  /// No description provided for @priceLabel.
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get priceLabel;

  /// No description provided for @categoryLabel.
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get categoryLabel;

  /// No description provided for @brandLabel.
  ///
  /// In en, this message translates to:
  /// **'Brand'**
  String get brandLabel;

  /// No description provided for @variantsTitle.
  ///
  /// In en, this message translates to:
  /// **'Variants'**
  String get variantsTitle;

  /// No description provided for @noVariants.
  ///
  /// In en, this message translates to:
  /// **'No variants available'**
  String get noVariants;

  /// No description provided for @colorLabel.
  ///
  /// In en, this message translates to:
  /// **'Color'**
  String get colorLabel;

  /// No description provided for @sizeLabel.
  ///
  /// In en, this message translates to:
  /// **'Size'**
  String get sizeLabel;

  /// No description provided for @cartTitle.
  ///
  /// In en, this message translates to:
  /// **'Cart'**
  String get cartTitle;

  /// No description provided for @loadingCart.
  ///
  /// In en, this message translates to:
  /// **'Loading cart...'**
  String get loadingCart;

  /// No description provided for @emptyCartMessage.
  ///
  /// In en, this message translates to:
  /// **'Your cart is empty'**
  String get emptyCartMessage;

  /// No description provided for @clearCartLabel.
  ///
  /// In en, this message translates to:
  /// **'Clear cart'**
  String get clearCartLabel;

  /// No description provided for @subtotalLabel.
  ///
  /// In en, this message translates to:
  /// **'Subtotal'**
  String get subtotalLabel;

  /// No description provided for @unitPriceLabel.
  ///
  /// In en, this message translates to:
  /// **'Unit price'**
  String get unitPriceLabel;

  /// No description provided for @lineTotalLabel.
  ///
  /// In en, this message translates to:
  /// **'Line total'**
  String get lineTotalLabel;

  /// No description provided for @quantityLabel.
  ///
  /// In en, this message translates to:
  /// **'Quantity'**
  String get quantityLabel;

  /// No description provided for @removeItemLabel.
  ///
  /// In en, this message translates to:
  /// **'Remove item'**
  String get removeItemLabel;

  /// No description provided for @addToCartLabel.
  ///
  /// In en, this message translates to:
  /// **'Add to cart'**
  String get addToCartLabel;

  /// No description provided for @addedToCartMessage.
  ///
  /// In en, this message translates to:
  /// **'Added to cart'**
  String get addedToCartMessage;

  /// No description provided for @proceedToCheckoutLabel.
  ///
  /// In en, this message translates to:
  /// **'Proceed to checkout'**
  String get proceedToCheckoutLabel;

  /// No description provided for @checkoutTitle.
  ///
  /// In en, this message translates to:
  /// **'Checkout'**
  String get checkoutTitle;

  /// No description provided for @checkoutIntro.
  ///
  /// In en, this message translates to:
  /// **'Choose a delivery address to continue.'**
  String get checkoutIntro;

  /// No description provided for @manageAddressesLabel.
  ///
  /// In en, this message translates to:
  /// **'Manage addresses'**
  String get manageAddressesLabel;

  /// No description provided for @continueToReviewLabel.
  ///
  /// In en, this message translates to:
  /// **'Continue to review'**
  String get continueToReviewLabel;

  /// No description provided for @selectAddressTitle.
  ///
  /// In en, this message translates to:
  /// **'Delivery address'**
  String get selectAddressTitle;

  /// No description provided for @loadingAddresses.
  ///
  /// In en, this message translates to:
  /// **'Loading addresses...'**
  String get loadingAddresses;

  /// No description provided for @noAddressesMessage.
  ///
  /// In en, this message translates to:
  /// **'No saved addresses. Add one to continue.'**
  String get noAddressesMessage;

  /// No description provided for @addAddressLabel.
  ///
  /// In en, this message translates to:
  /// **'Add address'**
  String get addAddressLabel;

  /// No description provided for @cancelLabel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancelLabel;

  /// No description provided for @loadingDelivery.
  ///
  /// In en, this message translates to:
  /// **'Loading delivery options...'**
  String get loadingDelivery;

  /// No description provided for @regionLabel.
  ///
  /// In en, this message translates to:
  /// **'Region'**
  String get regionLabel;

  /// No description provided for @areaLabel.
  ///
  /// In en, this message translates to:
  /// **'Area'**
  String get areaLabel;

  /// No description provided for @deliveryFeeLabel.
  ///
  /// In en, this message translates to:
  /// **'Delivery fee'**
  String get deliveryFeeLabel;

  /// No description provided for @defaultAddressBadge.
  ///
  /// In en, this message translates to:
  /// **'Default'**
  String get defaultAddressBadge;

  /// No description provided for @regionRequired.
  ///
  /// In en, this message translates to:
  /// **'Select a region'**
  String get regionRequired;

  /// No description provided for @areaRequired.
  ///
  /// In en, this message translates to:
  /// **'Select a delivery area'**
  String get areaRequired;

  /// No description provided for @addressLine1Label.
  ///
  /// In en, this message translates to:
  /// **'Address line 1'**
  String get addressLine1Label;

  /// No description provided for @addressLine2Label.
  ///
  /// In en, this message translates to:
  /// **'Address line 2 (optional)'**
  String get addressLine2Label;

  /// No description provided for @addressRequired.
  ///
  /// In en, this message translates to:
  /// **'Address is required'**
  String get addressRequired;

  /// No description provided for @cityLabel.
  ///
  /// In en, this message translates to:
  /// **'City (optional)'**
  String get cityLabel;

  /// No description provided for @addressLabelOptional.
  ///
  /// In en, this message translates to:
  /// **'Label (optional)'**
  String get addressLabelOptional;

  /// No description provided for @recipientNameLabel.
  ///
  /// In en, this message translates to:
  /// **'Recipient name (optional)'**
  String get recipientNameLabel;

  /// No description provided for @recipientPhoneLabel.
  ///
  /// In en, this message translates to:
  /// **'Recipient phone (optional)'**
  String get recipientPhoneLabel;

  /// No description provided for @setDefaultAddressLabel.
  ///
  /// In en, this message translates to:
  /// **'Set as default address'**
  String get setDefaultAddressLabel;

  /// No description provided for @saveAddressLabel.
  ///
  /// In en, this message translates to:
  /// **'Save address'**
  String get saveAddressLabel;

  /// No description provided for @checkoutReviewTitle.
  ///
  /// In en, this message translates to:
  /// **'Review order'**
  String get checkoutReviewTitle;

  /// No description provided for @selectAddressFirst.
  ///
  /// In en, this message translates to:
  /// **'Select a delivery address first'**
  String get selectAddressFirst;

  /// No description provided for @changeLabel.
  ///
  /// In en, this message translates to:
  /// **'Change'**
  String get changeLabel;

  /// No description provided for @loadingQuote.
  ///
  /// In en, this message translates to:
  /// **'Loading quote...'**
  String get loadingQuote;

  /// No description provided for @retryLabel.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retryLabel;

  /// No description provided for @discountLabel.
  ///
  /// In en, this message translates to:
  /// **'Discount'**
  String get discountLabel;

  /// No description provided for @totalLabel.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get totalLabel;

  /// No description provided for @placeOrderLabel.
  ///
  /// In en, this message translates to:
  /// **'Place order'**
  String get placeOrderLabel;

  /// No description provided for @orderCreatedTitle.
  ///
  /// In en, this message translates to:
  /// **'Order created'**
  String get orderCreatedTitle;

  /// No description provided for @paymentPendingMessage.
  ///
  /// In en, this message translates to:
  /// **'Your order was created. Payment is pending — use the payment page when available or check order status later.'**
  String get paymentPendingMessage;

  /// No description provided for @orderNumberLabel.
  ///
  /// In en, this message translates to:
  /// **'Order number'**
  String get orderNumberLabel;

  /// No description provided for @orderStatusLabel.
  ///
  /// In en, this message translates to:
  /// **'Order status'**
  String get orderStatusLabel;

  /// No description provided for @paymentStatusLabel.
  ///
  /// In en, this message translates to:
  /// **'Payment status'**
  String get paymentStatusLabel;

  /// No description provided for @merchantReferenceLabel.
  ///
  /// In en, this message translates to:
  /// **'Reference'**
  String get merchantReferenceLabel;

  /// No description provided for @checkoutUrlLabel.
  ///
  /// In en, this message translates to:
  /// **'Payment URL'**
  String get checkoutUrlLabel;

  /// No description provided for @backToProductsLabel.
  ///
  /// In en, this message translates to:
  /// **'Back to products'**
  String get backToProductsLabel;

  /// No description provided for @viewCartLabel.
  ///
  /// In en, this message translates to:
  /// **'View cart'**
  String get viewCartLabel;

  /// No description provided for @viewOrderLabel.
  ///
  /// In en, this message translates to:
  /// **'View order'**
  String get viewOrderLabel;

  /// No description provided for @ordersTitle.
  ///
  /// In en, this message translates to:
  /// **'My orders'**
  String get ordersTitle;

  /// No description provided for @orderDetailsTitle.
  ///
  /// In en, this message translates to:
  /// **'Order details'**
  String get orderDetailsTitle;

  /// No description provided for @loadingOrders.
  ///
  /// In en, this message translates to:
  /// **'Loading orders...'**
  String get loadingOrders;

  /// No description provided for @loadingOrderDetails.
  ///
  /// In en, this message translates to:
  /// **'Loading order details...'**
  String get loadingOrderDetails;

  /// No description provided for @noOrdersMessage.
  ///
  /// In en, this message translates to:
  /// **'You have no orders yet'**
  String get noOrdersMessage;

  /// No description provided for @orderDateLabel.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get orderDateLabel;

  /// No description provided for @orderItemsTitle.
  ///
  /// In en, this message translates to:
  /// **'Items'**
  String get orderItemsTitle;

  /// No description provided for @paymentStatusSectionTitle.
  ///
  /// In en, this message translates to:
  /// **'Payment status'**
  String get paymentStatusSectionTitle;

  /// No description provided for @loadingPaymentStatus.
  ///
  /// In en, this message translates to:
  /// **'Loading payment status...'**
  String get loadingPaymentStatus;

  /// No description provided for @refreshPaymentStatusLabel.
  ///
  /// In en, this message translates to:
  /// **'Refresh payment status'**
  String get refreshPaymentStatusLabel;

  /// No description provided for @shippingInfoTitle.
  ///
  /// In en, this message translates to:
  /// **'Shipping'**
  String get shippingInfoTitle;

  /// No description provided for @paymentInfoTitle.
  ///
  /// In en, this message translates to:
  /// **'Payment'**
  String get paymentInfoTitle;

  /// No description provided for @profileTitle.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profileTitle;

  /// No description provided for @loadingProfile.
  ///
  /// In en, this message translates to:
  /// **'Loading profile...'**
  String get loadingProfile;

  /// No description provided for @editProfileLabel.
  ///
  /// In en, this message translates to:
  /// **'Edit profile'**
  String get editProfileLabel;

  /// No description provided for @saveProfileLabel.
  ///
  /// In en, this message translates to:
  /// **'Save profile'**
  String get saveProfileLabel;

  /// No description provided for @navProductsLabel.
  ///
  /// In en, this message translates to:
  /// **'Products'**
  String get navProductsLabel;

  /// No description provided for @navCartLabel.
  ///
  /// In en, this message translates to:
  /// **'Cart'**
  String get navCartLabel;

  /// No description provided for @navOrdersLabel.
  ///
  /// In en, this message translates to:
  /// **'Orders'**
  String get navOrdersLabel;

  /// No description provided for @navProfileLabel.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get navProfileLabel;

  /// No description provided for @editAddressLabel.
  ///
  /// In en, this message translates to:
  /// **'Edit address'**
  String get editAddressLabel;

  /// No description provided for @deleteAddressLabel.
  ///
  /// In en, this message translates to:
  /// **'Delete address'**
  String get deleteAddressLabel;

  /// No description provided for @noAddressesManageMessage.
  ///
  /// In en, this message translates to:
  /// **'No saved addresses yet.'**
  String get noAddressesManageMessage;

  /// No description provided for @browseProductsLabel.
  ///
  /// In en, this message translates to:
  /// **'Browse products'**
  String get browseProductsLabel;

  /// No description provided for @openPaymentUrlLabel.
  ///
  /// In en, this message translates to:
  /// **'Open payment page'**
  String get openPaymentUrlLabel;

  /// No description provided for @orderStatusAwaitingPayment.
  ///
  /// In en, this message translates to:
  /// **'Awaiting payment'**
  String get orderStatusAwaitingPayment;

  /// No description provided for @orderStatusPaid.
  ///
  /// In en, this message translates to:
  /// **'Paid'**
  String get orderStatusPaid;

  /// No description provided for @orderStatusProcessing.
  ///
  /// In en, this message translates to:
  /// **'Processing'**
  String get orderStatusProcessing;

  /// No description provided for @orderStatusShipped.
  ///
  /// In en, this message translates to:
  /// **'Shipped'**
  String get orderStatusShipped;

  /// No description provided for @orderStatusDelivered.
  ///
  /// In en, this message translates to:
  /// **'Delivered'**
  String get orderStatusDelivered;

  /// No description provided for @orderStatusCancelled.
  ///
  /// In en, this message translates to:
  /// **'Cancelled'**
  String get orderStatusCancelled;

  /// No description provided for @paymentStatusPending.
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get paymentStatusPending;

  /// No description provided for @paymentStatusPaid.
  ///
  /// In en, this message translates to:
  /// **'Paid'**
  String get paymentStatusPaid;

  /// No description provided for @paymentStatusFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed'**
  String get paymentStatusFailed;

  /// No description provided for @paymentStatusExpired.
  ///
  /// In en, this message translates to:
  /// **'Expired'**
  String get paymentStatusExpired;

  /// No description provided for @barcodeLookupTitle.
  ///
  /// In en, this message translates to:
  /// **'Barcode lookup'**
  String get barcodeLookupTitle;

  /// No description provided for @barcodeLookupHint.
  ///
  /// In en, this message translates to:
  /// **'Enter a product barcode to find the item.'**
  String get barcodeLookupHint;

  /// No description provided for @barcodeLookupAction.
  ///
  /// In en, this message translates to:
  /// **'Look up product'**
  String get barcodeLookupAction;

  /// No description provided for @barcodeInputHint.
  ///
  /// In en, this message translates to:
  /// **'Enter barcode'**
  String get barcodeInputHint;

  /// No description provided for @barcodeRequired.
  ///
  /// In en, this message translates to:
  /// **'Barcode is required'**
  String get barcodeRequired;

  /// No description provided for @barcodeTooLong.
  ///
  /// In en, this message translates to:
  /// **'Barcode is too long'**
  String get barcodeTooLong;

  /// No description provided for @checkingPaymentStatusLabel.
  ///
  /// In en, this message translates to:
  /// **'Checking payment status...'**
  String get checkingPaymentStatusLabel;

  /// No description provided for @lastCheckedLabel.
  ///
  /// In en, this message translates to:
  /// **'Last checked'**
  String get lastCheckedLabel;

  /// No description provided for @networkError.
  ///
  /// In en, this message translates to:
  /// **'Network error'**
  String get networkError;

  /// No description provided for @timeoutError.
  ///
  /// In en, this message translates to:
  /// **'Request timeout'**
  String get timeoutError;

  /// No description provided for @unauthorizedError.
  ///
  /// In en, this message translates to:
  /// **'Unauthorized'**
  String get unauthorizedError;

  /// No description provided for @forbiddenError.
  ///
  /// In en, this message translates to:
  /// **'Forbidden'**
  String get forbiddenError;

  /// No description provided for @notFoundError.
  ///
  /// In en, this message translates to:
  /// **'Not found'**
  String get notFoundError;

  /// No description provided for @rateLimitError.
  ///
  /// In en, this message translates to:
  /// **'Too many requests'**
  String get rateLimitError;

  /// No description provided for @serverError.
  ///
  /// In en, this message translates to:
  /// **'Server error'**
  String get serverError;

  /// No description provided for @unknownError.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong'**
  String get unknownError;

  /// No description provided for @invalidPaymentUrl.
  ///
  /// In en, this message translates to:
  /// **'Invalid payment URL'**
  String get invalidPaymentUrl;

  /// No description provided for @couldNotOpenPaymentUrl.
  ///
  /// In en, this message translates to:
  /// **'Could not open payment URL'**
  String get couldNotOpenPaymentUrl;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
