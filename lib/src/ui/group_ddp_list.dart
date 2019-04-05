import 'package:flutter/material.dart';
import 'package:iek_mobile_catalog/src/models/business_model.dart';
import 'package:iek_mobile_catalog/src/ui/kind_ddp_card.dart';
import '../models/group_ddp_model.dart';
import '../blocs/groups_ddp_bloc.dart';

class GroupdDDPList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bloc.fetchAllGroupDDP();
    return Scaffold(
      appBar: AppBar(
        title: Text('Каталог товаров'),
      ),
      body: StreamBuilder(
        stream: bloc.allGroupsDDP,
        builder: (context, AsyncSnapshot<List<KindDDP>> snapshot) {
          if (snapshot.hasData) {
            return buildList(snapshot);
          } else if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }

  Widget buildList(AsyncSnapshot<List<KindDDP>> snapshot) {
    return GridView.builder(
        itemCount: snapshot.data.length,
        gridDelegate:
        new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) => KindDDPCard(snapshot.data, index)
    );
  }
}
