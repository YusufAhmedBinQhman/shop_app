import 'package:shop_app1/models/sendOrder.dart';

class SendOrderVM {
 List<sendTime> loadTime() {
    return [
      sendTime(name: "Morning", value: "Mo"),
      sendTime(name: "noon", value: "no"),
      sendTime(name: "Evening", value: "Ev"),
    ];
  }
}
