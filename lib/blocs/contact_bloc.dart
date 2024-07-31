import 'dart:async';
import 'package:contacts_list/blocs/contact_event.dart';
import 'package:contacts_list/blocs/contact_state.dart';
import 'package:contacts_list/models/contact_model.dart';
import 'package:contacts_list/repositories/contact_repository.dart';

class ContactBloc {
  final _contactRepository = ContactRepository();
  List<ContactModel> contacts = [];

  final _inputEventController = StreamController<ContactEvent>();
  final _outputStateController = StreamController<ContactState>();

  Sink<ContactEvent> get inputEvent => _inputEventController.sink;
  Stream<ContactState> get outputState => _outputStateController.stream;

  ContactBloc() {
    _inputEventController.stream.listen(_mapEventToState);
  }

  void _mapEventToState(ContactEvent event) async {
    _outputStateController.add(ContactLoadingState());

    try {
      if (event is LoadContactsEvent) {
        contacts = await _contactRepository.loadContacts();
      } else if (event is AddContactEvent) {
        contacts = await _contactRepository.addContact(event.contact);
      } else if (event is RemoveContactEvent) {
        contacts = await _contactRepository.removeContact(event.contact);
      }

      _outputStateController.add(ContactLoadedState(contacts: contacts));
    } catch (e) {
      _outputStateController.add(
        ContactErrorState(exception: Exception(e.toString())),
      );
    }
  }

  void dispose() {
    _inputEventController.close();
    _outputStateController.close();
  }
}
