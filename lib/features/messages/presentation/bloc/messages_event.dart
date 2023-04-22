part of 'messages_bloc.dart';

abstract class MessagesEvent extends Equatable {
  const MessagesEvent();

  @override
  List<Object> get props => [];
}

class ShowMessagesEvent extends MessagesEvent {
  const ShowMessagesEvent(this.message);

  final String message;

  @override
  List<Object> get props => [message];
}
