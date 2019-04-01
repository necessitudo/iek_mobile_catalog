import '../resources/repository.dart';
import 'package:rxdart/rxdart.dart';
import '../models/group_ddp_model.dart';

class GroupsDDPBloc {
  final _repository = Repository();
  final _groupsDDPFetcher = PublishSubject<GroupDDPModel>();

  Observable<GroupDDPModel> get allGroupsDDP => _groupsDDPFetcher.stream;

  fetchAllGroupDDP() async {
    GroupDDPModel groupDDPModel = await _repository.fetchAllGroupDDP();
    _groupsDDPFetcher.sink.add(groupDDPModel);
  }

  dispose() {
    _groupsDDPFetcher.close();
  }
}

final bloc = GroupsDDPBloc();