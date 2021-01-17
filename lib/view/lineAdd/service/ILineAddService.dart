import 'package:MyWordBox/view/lineAdd/model/line_add_model.dart';
import 'package:MyWordBox/view/lineAdd/model/line_add_response_model.dart';
import 'package:vexana/vexana.dart';

abstract class ILineAddService {
  final INetworkManager manager;
  ILineAddService(this.manager);

  Future<LineAddResponseModel> fetchlineEkleSevice(LineAddModel model);
}
