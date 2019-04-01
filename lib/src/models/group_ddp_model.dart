class GroupDDPModel {

  List<_Result> _results = [];

  GroupDDPModel.fromJson(List<dynamic> parsedJson) {
    List<_Result> temp = [];
    for (int i = 0; i < parsedJson.length; i++) {
      _Result result = _Result(parsedJson[i]);
      temp.add(result);
    }
    _results = temp;
  }

  List<_Result> get results => _results;

}

class _Result {
  String _kind;

  _Result(result) {
    _kind = result['kind'];
  }

  String get kind => _kind;
}
