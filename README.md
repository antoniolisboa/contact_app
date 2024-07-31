# Contacts List

Este é um projeto didático desenvolvido para entender o padrão BLoC (Business Logic Component) em Flutter. O objetivo é demonstrar como organizar a lógica de negócios separadamente da interface do usuário, utilizando eventos e estados.

## Estrutura do Projeto

O projeto é composto pelas seguintes partes principais:

1. **Modelos**: Representa os dados, neste caso, um contato.
2. **Eventos**: Define as ações que podem ser realizadas, como carregar, adicionar e remover contatos.
3. **Estados**: Representa a condição atual da aplicação, como carregando, carregado ou erro.
4. **BLoC**: Gerencia a lógica de negócios e o fluxo de dados entre eventos e estados.

## Modelo de Contato

O modelo de contato é representado pela classe `ContactModel`:

```dart
class ContactModel {
  final String name;
  final String email;

  ContactModel({required this.name, required this.email});
}
```

## Eventos

Os eventos são definidos na classe `ContactEvent` e suas subclasses:

```dart
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
```

Esses eventos são utilizados para disparar ações na aplicação.

## Estados

Os estados são definidos na classe `ContactState` e suas subclasses. Eles representam a condição atual da aplicação:

```dart
abstract class ContactState {}

class InitialContactState extends ContactState {}

class LoadingContactState extends ContactState {}

class LoadedContactState extends ContactState {
  final List<ContactModel> contacts;

  LoadedContactState({required this.contacts});
}

class ErrorContactState extends ContactState {
  final String message;

  ErrorContactState({required this.message});
}
```

Esses estados são utilizados para representar a condição atual da aplicação.

## BLoC

O BLoC é responsável por gerenciar a lógica de negócios e o fluxo de dados entre eventos e estados. Ele é composto por um `StreamController` para eventos e um `StreamController` para estados.

```dart
class ContactBloc {
  final _inputEventController = StreamController<ContactEvent>();
  final _outputStateController = StreamController<ContactState>();

  Sink<ContactEvent> get inputEvent => _inputEventController.sink;
  Stream<ContactState> get outputState => _outputStateController.stream;

  ContactBloc() {
    _inputEventController.stream.listen(_mapEventToState);
  }

  void _mapEventToState(ContactEvent event) async {
    _outputStateController.add(ContactLoadingState());

    // Lógica de processamento de eventos
    ...
  }

  void dispose() {
    _inputEventController.close();
    _outputStateController.close();
  }
}
```

A lógica de processamento dos eventos é centralizada no método *_mapEventToState*, que também lida com a emissão dos estados apropriados.

## Conclusão

Este projeto é um exemplo simples de como usar o padrão BLoC em Flutter para gerenciar a lógica de negócios de forma eficiente e separada da interface do usuário. Ele ajuda a entender a importância da arquitetura e da organização do código em aplicações Flutter.

Para mais informações, consulte a documentação oficial do Flutter: [https://flutter.dev/docs](https://flutter.dev/docs).
