// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appName => 'تورينو مودا ستايل';

  @override
  String get loginTitle => 'تسجيل الدخول';

  @override
  String get registerTitle => 'إنشاء حساب';

  @override
  String get homeTitle => 'الرئيسية';

  @override
  String get continueLabel => 'متابعة';

  @override
  String get logoutLabel => 'تسجيل الخروج';

  @override
  String get phase0Placeholder => 'تم تجهيز أساسيات المرحلة صفر.';

  @override
  String get phoneLabel => 'الهاتف';

  @override
  String get passwordLabel => 'كلمة المرور';

  @override
  String get nameLabel => 'الاسم';

  @override
  String get emailLabelOptional => 'البريد الإلكتروني (اختياري)';

  @override
  String get phoneValidation => 'أدخل رقم هاتف صالحًا';

  @override
  String get passwordValidation => 'كلمة المرور مطلوبة';

  @override
  String get passwordMinValidation => 'كلمة المرور 8 أحرف على الأقل';

  @override
  String get nameValidation => 'الاسم حرفان على الأقل';

  @override
  String get registerPrompt => 'إنشاء حساب جديد';

  @override
  String get loginPrompt => 'لديك حساب؟ سجّل الدخول';

  @override
  String homeWelcome(String name) {
    return 'مرحبًا، $name';
  }

  @override
  String get productsTitle => 'المنتجات';

  @override
  String get productDetailsTitle => 'تفاصيل المنتج';

  @override
  String get searchProducts => 'بحث المنتجات';

  @override
  String get searchHint => 'ابحث بالاسم أو الكود';

  @override
  String get searchAction => 'بحث';

  @override
  String get searchPrompt => 'أدخل كلمة البحث';

  @override
  String get searchQueryRequired => 'كلمة البحث مطلوبة';

  @override
  String get noProducts => 'لا توجد منتجات';

  @override
  String get noSearchResults => 'لا توجد نتائج';

  @override
  String get loadingProducts => 'جاري تحميل المنتجات...';

  @override
  String get productCodeLabel => 'كود المنتج';

  @override
  String get barcodeLabel => 'الباركود';

  @override
  String get priceLabel => 'السعر';

  @override
  String get categoryLabel => 'الفئة';

  @override
  String get brandLabel => 'العلامة';

  @override
  String get variantsTitle => 'الأصناف';

  @override
  String get noVariants => 'لا توجد أصناف';

  @override
  String get colorLabel => 'اللون';

  @override
  String get sizeLabel => 'المقاس';

  @override
  String get cartTitle => 'السلة';

  @override
  String get loadingCart => 'جاري تحميل السلة...';

  @override
  String get emptyCartMessage => 'سلتك فارغة';

  @override
  String get clearCartLabel => 'إفراغ السلة';

  @override
  String get subtotalLabel => 'المجموع الفرعي';

  @override
  String get unitPriceLabel => 'سعر الوحدة';

  @override
  String get lineTotalLabel => 'إجمالي السطر';

  @override
  String get quantityLabel => 'الكمية';

  @override
  String get removeItemLabel => 'إزالة العنصر';

  @override
  String get addToCartLabel => 'أضف إلى السلة';

  @override
  String get addedToCartMessage => 'تمت الإضافة إلى السلة';

  @override
  String get proceedToCheckoutLabel => 'متابعة الدفع';

  @override
  String get checkoutTitle => 'إتمام الطلب';

  @override
  String get checkoutIntro => 'اختر عنوان التوصيل للمتابعة.';

  @override
  String get manageAddressesLabel => 'إدارة العناوين';

  @override
  String get continueToReviewLabel => 'متابعة المراجعة';

  @override
  String get selectAddressTitle => 'عنوان التوصيل';

  @override
  String get loadingAddresses => 'جاري تحميل العناوين...';

  @override
  String get noAddressesMessage =>
      'لا توجد عناوين محفوظة. أضف عنوانًا للمتابعة.';

  @override
  String get addAddressLabel => 'إضافة عنوان';

  @override
  String get cancelLabel => 'إلغاء';

  @override
  String get loadingDelivery => 'جاري تحميل خيارات التوصيل...';

  @override
  String get regionLabel => 'المنطقة';

  @override
  String get areaLabel => 'منطقة التوصيل';

  @override
  String get deliveryFeeLabel => 'رسوم التوصيل';

  @override
  String get defaultAddressBadge => 'افتراضي';

  @override
  String get regionRequired => 'اختر المنطقة';

  @override
  String get areaRequired => 'اختر منطقة التوصيل';

  @override
  String get addressLine1Label => 'العنوان - السطر 1';

  @override
  String get addressLine2Label => 'العنوان - السطر 2 (اختياري)';

  @override
  String get addressRequired => 'العنوان مطلوب';

  @override
  String get cityLabel => 'المدينة (اختياري)';

  @override
  String get addressLabelOptional => 'التسمية (اختياري)';

  @override
  String get recipientNameLabel => 'اسم المستلم (اختياري)';

  @override
  String get recipientPhoneLabel => 'هاتف المستلم (اختياري)';

  @override
  String get setDefaultAddressLabel => 'تعيين كعنوان افتراضي';

  @override
  String get saveAddressLabel => 'حفظ العنوان';

  @override
  String get checkoutReviewTitle => 'مراجعة الطلب';

  @override
  String get selectAddressFirst => 'اختر عنوان التوصيل أولًا';

  @override
  String get changeLabel => 'تغيير';

  @override
  String get loadingQuote => 'جاري تحميل التسعير...';

  @override
  String get retryLabel => 'إعادة المحاولة';

  @override
  String get discountLabel => 'الخصم';

  @override
  String get totalLabel => 'الإجمالي';

  @override
  String get placeOrderLabel => 'تأكيد الطلب';

  @override
  String get orderCreatedTitle => 'تم إنشاء الطلب';

  @override
  String get paymentPendingMessage =>
      'تم إنشاء طلبك. الدفع معلق — استخدم صفحة الدفع عند توفرها أو راجع حالة الطلب لاحقًا.';

  @override
  String get orderNumberLabel => 'رقم الطلب';

  @override
  String get orderStatusLabel => 'حالة الطلب';

  @override
  String get paymentStatusLabel => 'حالة الدفع';

  @override
  String get merchantReferenceLabel => 'المرجع';

  @override
  String get checkoutUrlLabel => 'رابط الدفع';

  @override
  String get backToProductsLabel => 'العودة للمنتجات';

  @override
  String get viewCartLabel => 'عرض السلة';

  @override
  String get viewOrderLabel => 'عرض الطلب';

  @override
  String get ordersTitle => 'طلباتي';

  @override
  String get orderDetailsTitle => 'تفاصيل الطلب';

  @override
  String get loadingOrders => 'جاري تحميل الطلبات...';

  @override
  String get loadingOrderDetails => 'جاري تحميل تفاصيل الطلب...';

  @override
  String get noOrdersMessage => 'لا توجد طلبات بعد';

  @override
  String get orderDateLabel => 'التاريخ';

  @override
  String get orderItemsTitle => 'العناصر';

  @override
  String get paymentStatusSectionTitle => 'حالة الدفع';

  @override
  String get loadingPaymentStatus => 'جاري تحميل حالة الدفع...';

  @override
  String get refreshPaymentStatusLabel => 'تحديث حالة الدفع';

  @override
  String get shippingInfoTitle => 'الشحن';

  @override
  String get paymentInfoTitle => 'الدفع';

  @override
  String get profileTitle => 'الملف الشخصي';

  @override
  String get loadingProfile => 'جاري تحميل الملف...';

  @override
  String get editProfileLabel => 'تعديل الملف';

  @override
  String get saveProfileLabel => 'حفظ الملف';

  @override
  String get navProductsLabel => 'المنتجات';

  @override
  String get navCartLabel => 'السلة';

  @override
  String get navOrdersLabel => 'الطلبات';

  @override
  String get navProfileLabel => 'الملف';

  @override
  String get editAddressLabel => 'تعديل العنوان';

  @override
  String get deleteAddressLabel => 'حذف العنوان';

  @override
  String get noAddressesManageMessage => 'لا توجد عناوين محفوظة بعد.';

  @override
  String get browseProductsLabel => 'تصفح المنتجات';

  @override
  String get openPaymentUrlLabel => 'فتح صفحة الدفع';

  @override
  String get orderStatusAwaitingPayment => 'بانتظار الدفع';

  @override
  String get orderStatusPaid => 'مدفوع';

  @override
  String get orderStatusProcessing => 'قيد المعالجة';

  @override
  String get orderStatusShipped => 'تم الشحن';

  @override
  String get orderStatusDelivered => 'تم التسليم';

  @override
  String get orderStatusCancelled => 'ملغى';

  @override
  String get paymentStatusPending => 'معلق';

  @override
  String get paymentStatusPaid => 'مدفوع';

  @override
  String get paymentStatusFailed => 'فشل';

  @override
  String get paymentStatusExpired => 'منتهي';

  @override
  String get barcodeLookupTitle => 'بحث بالباركود';

  @override
  String get barcodeLookupHint => 'أدخل باركود المنتج للعثور عليه.';

  @override
  String get barcodeLookupAction => 'بحث عن المنتج';

  @override
  String get barcodeInputHint => 'أدخل الباركود';

  @override
  String get barcodeRequired => 'الباركود مطلوب';

  @override
  String get barcodeTooLong => 'الباركود طويل جدًا';

  @override
  String get checkingPaymentStatusLabel => 'جاري التحقق من حالة الدفع...';

  @override
  String get lastCheckedLabel => 'آخر تحقق';

  @override
  String get networkError => 'خطأ في الشبكة';

  @override
  String get timeoutError => 'انتهت مهلة الطلب';

  @override
  String get unauthorizedError => 'غير مصرح';

  @override
  String get forbiddenError => 'محظور';

  @override
  String get notFoundError => 'غير موجود';

  @override
  String get rateLimitError => 'طلبات كثيرة جدًا';

  @override
  String get serverError => 'خطأ في الخادم';

  @override
  String get unknownError => 'حدث خطأ ما';

  @override
  String get invalidPaymentUrl => 'رابط الدفع غير صالح';

  @override
  String get couldNotOpenPaymentUrl => 'تعذر فتح رابط الدفع';
}
