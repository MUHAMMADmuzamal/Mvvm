import 'package:rooheman/models/client_model.dart';
import 'package:rooheman/repositories/clients/client_repository.dart';

import 'client_view_model.dart';

class ClientsViewModel {
  String title = "Rooheman";
  ClientsRepository? clientsRepository;
  ClientsViewModel({this.clientsRepository});
  Future<List<ClientViewModel>> fetchAllClients() async {
    List<ClientModel> list = await clientsRepository!.getAllClients();
    return list.map((client) => ClientViewModel(client)).toList();
  }
}
