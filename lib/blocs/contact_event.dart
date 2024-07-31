import 'package:contacts_list/models/contact_model.dart';

abstract class ContactEvent {}

class LoadContactsEvent extends ContactEvent {}

class AddContactEvent extends ContactEvent {
  final ContactModel contact;

  AddContactEvent({required this.contact});
}

class RemoveContactEvent extends ContactEvent {
  final ContactModel contact;

  RemoveContactEvent({required this.contact});
}
