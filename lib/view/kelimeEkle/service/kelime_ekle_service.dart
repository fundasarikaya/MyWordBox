import 'package:MyWordBox/view/_product/enum/network_route_enum.dart';
import 'package:MyWordBox/view/kelimeEkle/model/kelime_ekle_response_model.dart';
import 'package:MyWordBox/view/kelimeEkle/model/kelime_ekle_model.dart';
import 'package:MyWordBox/view/kelimeEkle/service/IKelimeEkleService.dart';
import 'package:vexana/src/interface/INetworkService.dart';
import 'package:vexana/vexana.dart';

class KelimeEkleService extends IKelimeEkleService {
  KelimeEkleService(INetworkManager manager) : super(manager);

  @override
  Future<KelimeEkleResponseModel> fetchKelimeEkleSevice(
      KelimeEkleModel model) async {
    final response =
        await manager.fetch<KelimeEkleResponseModel, KelimeEkleResponseModel>(
            NetworkRoutes.WORD_ADD.rawValue + ".json",
            parseModel: KelimeEkleResponseModel(),
            method: RequestType.POST,
            data: model);

    print(response);
    if (response.data is KelimeEkleResponseModel) {
      return response.data;
    } else {
      return null;
    }
  }
}
