import 'dart:collection';

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


class _FileRef{
  String _uri;

  _FileRef(_fileRef){
    _uri = _fileRef['uri'];
  }

  String get uri => _uri;

}

class _Result {
  String _kind;
  _FileRef _fileRef;

  _Result(Map<String, dynamic> result) {
    _kind     = result['kind'];

    if (result.containsKey('file_ref'))
      _fileRef = _FileRef(result['file_ref']);
    else
      _fileRef = _FileRef({'uri':''});

  }

  String get kind => _kind;

  String get uri => _fileRef._uri;

}
