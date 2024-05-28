import 'package:stellar_client/consts.dart';
import 'package:stellar_client/utils/utils.dart' show requestModelToHARJsonRequest;
import 'package:stellar_client/models/models.dart';

class HARCodeGen {
  String? getCode(
    HttpRequestModel requestModel,
    String defaultUriScheme, {
    String? boundary,
  }) {
    try {
      var harString = kEncoder.convert(requestModelToHARJsonRequest(
        requestModel,
        defaultUriScheme: defaultUriScheme,
        useEnabled: true,
        boundary: boundary,
      ));
      return harString;
    } catch (e) {
      return null;
    }
  }
}
