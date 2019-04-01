import 'package:flutter/material.dart';
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
        builder: (context, AsyncSnapshot<GroupDDPModel> snapshot) {
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

  Widget buildList(AsyncSnapshot<GroupDDPModel> snapshot) {
    return GridView.builder(
        itemCount: snapshot.data.results.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Column(children:
          [
            //Image.network(snapshot.data.results[index].uri),
            Text(snapshot.data.results[index].kind)]);
        });
  }
}
