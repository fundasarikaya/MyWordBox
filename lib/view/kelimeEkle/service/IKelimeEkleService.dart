import 'package:MyWordBox/view/kelimeEkle/model/kelime_ekle_model.dart';
import 'package:MyWordBox/view/kelimeEkle/model/kelime_ekle_response_model.dart';
import 'package:vexana/vexana.dart';

abstract class IKelimeEkleService {
  final INetworkManager manager;
  IKelimeEkleService(this.manager);

  Future<KelimeEkleResponseModel> fetchKelimeEkleSevice(KelimeEkleModel model);
}
