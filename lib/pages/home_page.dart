import 'package:contacts_list/blocs/contact_bloc.dart';
import 'package:contacts_list/blocs/contact_event.dart';
import 'package:contacts_list/blocs/contact_state.dart';
import 'package:contacts_list/models/contact_model.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late ContactBloc _contactBloc;

  @override
  void initState() {
    super.initState();
    _contactBloc = ContactBloc();
    _contactBloc.inputEvent.add(LoadContactsEvent());
  }

  @override
  void dispose() {
    _contactBloc.dispose();
    super.dispose();
  }

  void _showAddContactDialog(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    String name = '';
    String email = '';

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          icon: const Icon(Icons.person_add_alt_1_rounded),
          title: const Text('Adicionar Contato'),
          content: Form(
            key: formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Nome'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, inisira um nome.';
                    }
                    return null;
                  },
                  onSaved: (newValue) => name = newValue ?? '',
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Email'),
                  validator: (value) {
                    if (value == null ||
                        value.isEmpty ||
                        !value.contains('@')) {
                      return 'Por favor, insira um email válido.';
                    }
                    return null;
                  },
                  onSaved: (newValue) => email = newValue ?? '',
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancelar'),
            ),
            FilledButton.tonal(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  _contactBloc.inputEvent.add(
                    AddContactEvent(
                      contact: ContactModel(
                        name: name,
                        email: email,
                      ),
                    ),
                  );
                  Navigator.of(context).pop();
                }
              },
              child: const Text('Adicionar'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.account_tree_rounded),
        title: const Text('Contacts List'),
      ),
      body: StreamBuilder<ContactState>(
        stream: _contactBloc.outputState,
        builder: (context, snapshot) {
          List<ContactModel> contacts = snapshot.data?.contacts ?? [];

          if (snapshot.data is ContactLoadingState) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.data is ContactLoadedState) {
            return ListView.separated(
              separatorBuilder: (context, index) => const Divider(),
              itemCount: contacts.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    child: Text(contacts[index].name[0]),
                  ),
                  title: Text(contacts[index].name),
                  subtitle: Text(contacts[index].email),
                  trailing: IconButton(
                    onPressed: () {
                      _contactBloc.inputEvent.add(
                        RemoveContactEvent(contact: contacts[index]),
                      );
                    },
                    icon: const Icon(Icons.remove_rounded),
                  ),
                );
              },
            );
          } else if (snapshot.data is ContactErrorState) {
            return const Center(
              child: Row(
                children: [
                  Icon(Icons.warning_amber_rounded),
                  Text('Erro ao carregar os contatos.')
                ],
              ),
            );
          }

          return const Center(
            child: Row(
              children: [
                Icon(Icons.warning_amber_rounded),
                Text('Nenhum dado disponível.'),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showAddContactDialog(context);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
