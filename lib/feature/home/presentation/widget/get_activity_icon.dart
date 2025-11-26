import 'package:tahwishtak/core/style/images/asset_manger.dart';

String getActivityImage(String? type) {
  switch (type) {
    case "حيوانات":
      return ImageAsset.bee;
    case "معاملات نقدية":
      return ImageAsset.moneyBags;
    case "مواصلات":
      return ImageAsset.publicTransport;
    case "سفر":
      return ImageAsset.travel;
    case "التسوق":
      return ImageAsset.shoppingBag;
    case "شراء مأكولات":
      return ImageAsset.fastfood;
    default:
      return ImageAsset.handshake;
  }
}
