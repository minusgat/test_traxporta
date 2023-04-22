part of 'messages_bloc.dart';

abstract class MessagesState extends Equatable {
  const MessagesState(this.message);

  final String message;

  @override
  List<Object> get props => [message];
}

class MessagesInitial extends MessagesState {
  const MessagesInitial() : super('');
}

class MessagesChangedState extends MessagesState {
  const MessagesChangedState(String message) : super(message);
}
