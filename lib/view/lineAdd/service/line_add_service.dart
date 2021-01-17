import 'package:MyWordBox/view/_product/enum/network_route_enum.dart';
import 'package:MyWordBox/view/lineAdd/model/line_add_model.dart';
import 'package:MyWordBox/view/lineAdd/model/line_add_response_model.dart';
import 'package:MyWordBox/view/lineAdd/service/ILineAddService.dart';
import 'package:vexana/src/interface/INetworkService.dart';
import 'package:vexana/vexana.dart';

class LineAddService extends ILineAddService {
  LineAddService(INetworkManager manager) : super(manager);

  @override
  Future<LineAddResponseModel> fetchlineEkleSevice(LineAddModel model) async {
    final response =
        await manager.fetch<LineAddResponseModel, LineAddResponseModel>(
            NetworkRoutes.LINE_ADD.rawValue + ".json",
            parseModel: LineAddResponseModel(),
            method: RequestType.POST,
            data: model);

    print(response);
    if (response.data is LineAddResponseModel) {
      return response.data;
    } else {
      return null;
    }
  }
}
