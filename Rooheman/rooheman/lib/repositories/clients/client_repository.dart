import 'package:rooheman/models/client_model.dart';

abstract class ClientsRepository {
  Future<List<ClientModel>> getAllClients();
  Future<ClientModel> getClientById(int id);
}
