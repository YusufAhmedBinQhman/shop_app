import 'package:shop_app1/models/sendOrder.dart';

class SendOrderVM {
  List<sendTime> loadTime() {
    return [
      sendTime(name: "صباحاً", value: "Mo"),
      sendTime(name: "عصراً", value: "no"),
      sendTime(name: "ليلاً", value: "Ev"),
    ];
  }
}
