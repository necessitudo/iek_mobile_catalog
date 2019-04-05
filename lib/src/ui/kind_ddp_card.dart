import 'package:flutter/material.dart';
import 'package:iek_mobile_catalog/src/models/business_model.dart';

class KindDDPCard extends StatelessWidget {
  final List<KindDDP> _listKinds;
  final int _index;

  KindDDPCard(this._listKinds, this._index);

  @override
  Widget build(BuildContext context) {

    return Padding(
        padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
        child: Card(
            child: Column(children: [
              Container(
                  height: 120.0,
                  child: Image.network(_listKinds[_index].imageUrl,
                      fit: BoxFit.scaleDown)),
              Center(child: Text(_listKinds[_index].name))
            ])));
    /*if (groupDDPModel.results[_index].uri == '') {
      return Text(groupDDPModel.results[_index].kind);
    } else {
      return Padding(
          padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
          child: Card(
              child: Column(children: [
            Container(
                height: 120.0,
                child: Image.network(groupDDPModel.results[_index].uri,
                    fit: BoxFit.scaleDown)),
            Center(child: Text(groupDDPModel.results[_index].kind))
          ])));
    }*/
  }
}
