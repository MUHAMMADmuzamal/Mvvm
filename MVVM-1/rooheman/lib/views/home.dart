import 'package:flutter/material.dart';
import 'package:rooheman/widgets/layout.dart';
import 'package:rooheman/widgets/custom_card.dart';
import 'package:rooheman/view_models/clients_view_model.dart';
import 'package:rooheman/repositories/clients/clients_fake.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ClientsViewModel clientsViewModel =
        ClientsViewModel(clientsRepository: ClientFakeData());
    return Layout(
      title: clientsViewModel.title,
      child: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: FutureBuilder(
              future: clientsViewModel.fetchAllClients(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return Wrap(
                    alignment: WrapAlignment.center,
                    children: snapshot.data!
                        .map((e) => CustomCard(
                              data: e,
                            ))
                        .toList()
                        .cast<Widget>(),
                  );
                }
                return const CircularProgressIndicator();
              },
            ),
          ),
        ),
      ),
    );
  }
}
