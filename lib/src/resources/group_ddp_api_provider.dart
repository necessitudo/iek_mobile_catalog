import 'dart:async';
import 'dart:convert';
import '../models/group_ddp_model.dart';
import 'package:http_auth/http_auth.dart' show BasicAuthClient;

class GroupDDPApiProvider {
  BasicAuthClient client =
      BasicAuthClient('172-20180316-171026-755', '6X?z1jE:=q8R1Mo_');

  Future<GroupDDPModel> fetchGroupDDPList() async {
    final responce = await client.get("https://www.iek.ru/api/ddp");
    if (responce.statusCode == 200) {
      return GroupDDPModel.fromJson(json.decode(responce.body));
    } else {
      //throw Exception('Failed to load group DDP');
      return GroupDDPModel.withError(
          "${responce.statusCode} ${responce.reasonPhrase}");
    }
  }
}
