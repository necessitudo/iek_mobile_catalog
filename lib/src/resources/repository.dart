import 'dart:async';
import 'movie_api_provider.dart';
import 'group_ddp_api_provider.dart';

import '../models/item_model.dart';
import '../models/group_ddp_model.dart';

class Repository {

  final moviesApiProvider = MovieApiProvider();
  final groupsDDPApiProvider = GroupDDPApiProvider();

  Future<ItemModel> fetchAllMovies() => moviesApiProvider.fetchMovieList();

  Future<GroupDDPModel> fetchAllGroupDDP() => groupsDDPApiProvider.fetchGroupDDPList();
}
