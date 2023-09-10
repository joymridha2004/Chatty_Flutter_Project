import 'package:chatty/common/entities/entities.dart';
import 'package:get/get.dart';

class ProfileState{
  var head_detail = Rx<UserLoginResponseEntity?>(null);
  RxList<MeListItem> meListItem =<MeListItem>[].obs;

}