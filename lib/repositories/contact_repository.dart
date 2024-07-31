import 'package:contacts_list/models/contact_model.dart';

class ContactRepository {
  final List<ContactModel> _contacts = [];

  Future<List<ContactModel>> loadContacts() async {
    _contacts.addAll([
      ContactModel(
        name: 'João Cleber',
        email: 'jaocreb@email.com',
      ),
      ContactModel(
        name: 'Ana Lucia',
        email: 'anal@email.com',
      ),
      ContactModel(
        name: 'Paulo Pedreiro',
        email: 'paup@email.com',
      ),
      ContactModel(
        name: 'Igor Advogado',
        email: 'ignora@email.com',
      ),
      ContactModel(
        name: 'Jessica Prima do Pedro',
        email: 'jes01@email.com',
      ),
    ]);

    return Future.delayed(
      const Duration(milliseconds: 4000),
      () => _contacts,
    );
  }

  Future<List<ContactModel>> addContact(ContactModel contact) {
    _contacts.add(contact);

    return Future.delayed(
      const Duration(milliseconds: 100),
      () => _contacts,
    );
  }

  Future<List<ContactModel>> removeContact(ContactModel contact) {
    _contacts.remove(contact);

    return Future.delayed(
      const Duration(milliseconds: 100),
      () => _contacts,
    );
  }
}
