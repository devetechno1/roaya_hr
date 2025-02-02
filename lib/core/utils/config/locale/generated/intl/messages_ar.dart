// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ar locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ar';

  static String m0(personName) =>
      "مرحبًا ${personName}، ماذا تريد أن تفعل الآن؟";

  static String m1(min) => "لا يمكن أن يكون أقل من ${min}";

  static String m2(max) => "لا يمكن أن يكون أكثر من ${max}";

  static String m3(createdDate) => "تم الإنشاء في ${createdDate}";

  static String m4(userName) => "أهلاً، ${userName}";

  static String m5(updatedDate) => "آخر تحديث في ${updatedDate}";

  static String m6(pageName) => "الصفحة \'${pageName}\' غير موجودة في المسارات";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "HiPersonChooseWhatUWant": m0,
        "accountAlreadyExistsForThatEmail":
            MessageLookupByLibrary.simpleMessage(
                "يوجد بالفعل حساب مرتبط بهذا البريد الإلكتروني."),
        "areYouSureYouWantToReturnBack": MessageLookupByLibrary.simpleMessage(
            "هل أنت متأكد أنك تريد العودة؟"),
        "back": MessageLookupByLibrary.simpleMessage("رجوع"),
        "cancel": MessageLookupByLibrary.simpleMessage("إلغاء"),
        "cantBeLessThan": m1,
        "cantBeMoreThan": m2,
        "clientTookTooLong": MessageLookupByLibrary.simpleMessage(
            "استغرق العميل وقتًا طويلاً للاستجابة."),
        "clockInToBeginTheShift":
            MessageLookupByLibrary.simpleMessage("ابصـم لبدايـة الدوام"),
        "clockInToEndTheShift":
            MessageLookupByLibrary.simpleMessage("ابصـم لنهاية الدوام"),
        "confirm": MessageLookupByLibrary.simpleMessage("تأكيد"),
        "confirmPassword":
            MessageLookupByLibrary.simpleMessage("تأكيد كلمة المرور"),
        "connectedToInternet":
            MessageLookupByLibrary.simpleMessage("متصل بالإنترنت"),
        "createYourOwnEmail":
            MessageLookupByLibrary.simpleMessage("أنشئ بريدك الإلكتروني الخاص"),
        "createdAt": m3,
        "doNotHaveAnAccount":
            MessageLookupByLibrary.simpleMessage("لا تملك حسابًا؟"),
        "done": MessageLookupByLibrary.simpleMessage("تــم"),
        "emailAddress":
            MessageLookupByLibrary.simpleMessage("عنوان البريد الإلكتروني"),
        "enableService": MessageLookupByLibrary.simpleMessage("تفعيل الخدمة"),
        "enterEmailAddress": MessageLookupByLibrary.simpleMessage(
            "أدخل عنوان البريد الالكتروني"),
        "enterThePassword":
            MessageLookupByLibrary.simpleMessage("أدخل كلمة المرور"),
        "enterValidEmail": MessageLookupByLibrary.simpleMessage(
            "أدخل بريدًا إلكترونيًا صالحًا"),
        "enterYourCredentialsToContinue": MessageLookupByLibrary.simpleMessage(
            "أدخل بيانات اعتمادك للمتابعة."),
        "fillField": MessageLookupByLibrary.simpleMessage("املأ هذا الحقل"),
        "forgetPassword":
            MessageLookupByLibrary.simpleMessage("نسيت كلمة المرور؟"),
        "goBack": MessageLookupByLibrary.simpleMessage("ارجع"),
        "goodMorning": MessageLookupByLibrary.simpleMessage("صبـــاح الخيـر"),
        "goodbye": MessageLookupByLibrary.simpleMessage("إلى اللقــاء..."),
        "grantLocationAccess":
            MessageLookupByLibrary.simpleMessage("السماح بالوصول إلى الموقع"),
        "helloUserName": m4,
        "hidePassword":
            MessageLookupByLibrary.simpleMessage("إخفاء كلمة المرور"),
        "home": MessageLookupByLibrary.simpleMessage("الرئيسية"),
        "humanResourcesManagement":
            MessageLookupByLibrary.simpleMessage("إدارة الموارد البشرية"),
        "ifYouReturnNowYouWillLoseAllData":
            MessageLookupByLibrary.simpleMessage(
                "إذا عدت الآن، ستفقد جميع البيانات!"),
        "inText": MessageLookupByLibrary.simpleMessage("الدخول"),
        "lastUpdatedAt": m5,
        "locationServiceDisabled": MessageLookupByLibrary.simpleMessage(
            "خدمة الموقع على الجهاز معطلة."),
        "logOut": MessageLookupByLibrary.simpleMessage("تسجيل الخروج"),
        "logged": MessageLookupByLibrary.simpleMessage("تم تسجيل"),
        "login": MessageLookupByLibrary.simpleMessage("تسجيل الدخول"),
        "loginToContinue":
            MessageLookupByLibrary.simpleMessage("للاستمرار يرجى تسجيل الدخول"),
        "name": MessageLookupByLibrary.simpleMessage("الاسم"),
        "needsSynchronization":
            MessageLookupByLibrary.simpleMessage("يحتاج إلى مزامنة"),
        "noData": MessageLookupByLibrary.simpleMessage("لا توجد بيانات"),
        "noInternetConnection":
            MessageLookupByLibrary.simpleMessage("لا يوجد اتصال بالإنترنت"),
        "noUserFoundForThatEmail": MessageLookupByLibrary.simpleMessage(
            "لم يتم العثور على مستخدم مرتبط بهذا البريد الإلكتروني."),
        "notSamePass":
            MessageLookupByLibrary.simpleMessage("كلمة المرور غير متطابقة"),
        "outText": MessageLookupByLibrary.simpleMessage("الخروج"),
        "pageNameNotFoundInRoutes": m6,
        "pageNotFound":
            MessageLookupByLibrary.simpleMessage("الصفحة غير موجودة"),
        "pageNumberMustBiggerThan0": MessageLookupByLibrary.simpleMessage(
            "يجب أن يكون رقم الصفحة أكبر من 0"),
        "password": MessageLookupByLibrary.simpleMessage("كلمة المرور"),
        "passwordProvidedIsTooWeak": MessageLookupByLibrary.simpleMessage(
            "كلمة المرور المقدمة ضعيفة جدًا."),
        "pleaseClickHereToLogOut": MessageLookupByLibrary.simpleMessage(
            "الرجاء الضغط هنا لتسجيل الخــروج"),
        "pleaseClickHereToLogin": MessageLookupByLibrary.simpleMessage(
            "الرجاء الضغط هنا لتسجيل الدخــول"),
        "pressAgainToExit":
            MessageLookupByLibrary.simpleMessage("اضغط مرة أخرى للخروج"),
        "recordTime": MessageLookupByLibrary.simpleMessage("سجل الوقت"),
        "recover": MessageLookupByLibrary.simpleMessage("استعادة"),
        "rememberMe": MessageLookupByLibrary.simpleMessage("تذكرني"),
        "requestLocationPermission": MessageLookupByLibrary.simpleMessage(
            "الرجاء منح الإذن للوصول إلى موقع جهازك"),
        "returnBack": MessageLookupByLibrary.simpleMessage("العودة"),
        "serverTookTooLong": MessageLookupByLibrary.simpleMessage(
            "استغرق الخادم وقتًا طويلاً للاستجابة."),
        "serverTookTooLongToRespond": MessageLookupByLibrary.simpleMessage(
            "استغرق الخادم وقتًا طويلاً للاستجابة."),
        "showPassword": MessageLookupByLibrary.simpleMessage("عرض كلمة المرور"),
        "signUp": MessageLookupByLibrary.simpleMessage("التسجيل"),
        "sslCertificateNotTrusted":
            MessageLookupByLibrary.simpleMessage("شهادة SSL غير موثوقة."),
        "startNow": MessageLookupByLibrary.simpleMessage("البـــــدء الآن"),
        "stayHere": MessageLookupByLibrary.simpleMessage("ابق هنا"),
        "successfully": MessageLookupByLibrary.simpleMessage("بنجاح"),
        "theSuppliedAuthCredentialIsIncorrect":
            MessageLookupByLibrary.simpleMessage(
                "بيانات اعتماد المصادقة المقدمة غير صحيحة أو مشوهة أو منتهية الصلاحية."),
        "thereIsProblemWithServerTryAgainLater":
            MessageLookupByLibrary.simpleMessage(
                "هناك مشكلة في الخادم. حاول مرة أخرى لاحقًا."),
        "timeMustBeMoreThan60Minutes": MessageLookupByLibrary.simpleMessage(
            "يجب أن يكون الوقت اكثر من ٦٠ دقيقة"),
        "timeOfEntry": MessageLookupByLibrary.simpleMessage("وقت الدخــول"),
        "timeOfExit": MessageLookupByLibrary.simpleMessage("وقت الخروج"),
        "unauthorizedError": MessageLookupByLibrary.simpleMessage(
            "انتهت صلاحية جلستك أو ليس لديك إذن. يرجى تسجيل الدخول مرة أخرى."),
        "unknown": MessageLookupByLibrary.simpleMessage("غير معروف"),
        "unknownErrorOccurred":
            MessageLookupByLibrary.simpleMessage("حدث خطأ غير معروف."),
        "welcome": MessageLookupByLibrary.simpleMessage("أهلاً بـك..."),
        "welcomeBack": MessageLookupByLibrary.simpleMessage("مرحبًا بعودتك"),
        "wrongPasswordProvidedForThatUser":
            MessageLookupByLibrary.simpleMessage(
                "كلمة المرور المقدمة لهذا المستخدم خاطئة.")
      };
}
