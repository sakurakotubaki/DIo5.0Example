import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_example/model/superheros.dart';
import 'package:widget_example/repository/repository.dart';

final repositoryProvider = Provider((ref) => Repository());

final listProvider = FutureProvider<List<Superheros>>((ref) async {
  final repository = ref.read(repositoryProvider);
  return await repository.fetchList();
});
