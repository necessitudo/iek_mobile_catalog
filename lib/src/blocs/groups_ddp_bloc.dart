import 'package:iek_mobile_catalog/src/models/business_model.dart';
import '../resources/repository.dart';
import 'package:rxdart/rxdart.dart';
import '../models/group_ddp_model.dart';

class GroupsDDPBloc {
  final _repository = Repository();
  final _groupsDDPFetcher = PublishSubject<List<KindDDP>>();

  Observable<List<KindDDP>> get allGroupsDDP => _groupsDDPFetcher.stream;

  fetchAllGroupDDP() async {
    GroupDDPModel groupDDPModel = await _repository.fetchAllGroupDDP();

    final List<KindDDP> listKinds = createKinds(groupDDPModel);
    _groupsDDPFetcher.sink.add(listKinds);
  }

  dispose() {
    _groupsDDPFetcher.close();
  }
}

final bloc = GroupsDDPBloc();