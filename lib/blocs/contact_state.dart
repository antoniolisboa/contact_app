import 'package:contacts_list/models/contact_model.dart';

abstract class ContactState {
  final List<ContactModel> contacts;

  ContactState({required this.contacts});
}

class ContactLoadingState extends ContactState {
  ContactLoadingState() : super(contacts: []);
}

class ContactLoadedState extends ContactState {
  ContactLoadedState({required super.contacts});
}

class ContactErrorState extends ContactState {
  final Exception exception;

  ContactErrorState({required this.exception}) : super(contacts: []);
}
