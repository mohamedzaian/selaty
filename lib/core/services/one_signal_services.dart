import 'package:onesignal_flutter/onesignal_flutter.dart';

class OneSignalServices
{
  void init () {
    OneSignal.Debug.setLogLevel(OSLogLevel.verbose);
    OneSignal.initialize("84284fa0-1acc-4446-b75d-2f9bcacbb962");
    OneSignal.Notifications.requestPermission(false);
  }
}