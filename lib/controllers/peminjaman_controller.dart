import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:flutter_splashscreen/services/peminjaman_services.dart';

import '../models/peminjaman_model.dart';

class PeminjamanController extends GetxController {
  var peminjamanList = RxList<Data>();
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchPeminjamanData();
  }

  void fetchPeminjamanData() async {
    try {
      isLoading(true);
      var peminjaman = await PeminjamanService.fetchPeminjamanData();
      peminjamanList.value = peminjaman.data as List<Data>;
    } finally {
      isLoading(false);
    }
  }
}