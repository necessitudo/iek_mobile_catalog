import 'dart:collection';

import 'package:iek_mobile_catalog/src/models/group_ddp_model.dart';

class KindDDP {
  final String _name;
  final String _imageUrl;

  KindDDP(this._name, this._imageUrl);

  String get name => _name;
  String get imageUrl => _imageUrl;
}

List<KindDDP> createKinds(GroupDDPModel groupDDPModel) {
  final Set<String> uniqueKinds = Set();
  final List<KindDDP> listKinds = List();

  for (int i = 0; i < groupDDPModel.results.length; i++) {
    if (!uniqueKinds.contains(groupDDPModel.results[i].kind)) {
      listKinds.add(
          KindDDP(groupDDPModel.results[i].kind, groupDDPModel.results[i].uri));
      uniqueKinds.add(groupDDPModel.results[i].kind);
    }
  }

  return listKinds;
}
