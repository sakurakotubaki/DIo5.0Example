import 'package:widget_example/repository/api_client.dart';

class Repository {
  final api = ApiClient();
  dynamic fetchList() async {
    return await api.fetchList();
  }
}
