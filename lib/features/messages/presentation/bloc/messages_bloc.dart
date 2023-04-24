import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'messages_event.dart';
part 'messages_state.dart';

class MessagesBloc extends Bloc<MessagesEvent, MessagesState> {
  MessagesBloc() : super(const MessagesInitial()) {
    on<MessagesEvent>((event, emit) {
      if (event is ShowMessagesEvent) {
          emit(MessagesChangedState(event.message));
      }
    });
  }
}
