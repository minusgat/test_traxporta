import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_traxporta/features/messages/presentation/bloc/messages_bloc.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final MessagesBloc messagesBloc;

  ProfileBloc(this.messagesBloc) : super(const ProfileInitialState()) {
    on<ProfileEvent>((event, emit) {
      if (event is ProfileChangedEvent) {
        try {
          var formattedBussinesName = generateAbbreviation(
            event.bussinesName,
          );
          emit(
            ProfileChangedState(
              event.bussinesName,
              formattedBussinesName,
            ),
          );
        } on FormatException catch (e) {
          messagesBloc.add(ShowMessagesEvent(e.message));
        } catch (e) {
          messagesBloc.add(ShowMessagesEvent(e.toString()));
        }
      }
    });
  }

  String generateAbbreviation(String name) {
    if (name.isEmpty) {
      throw const FormatException('Name is empty');
    }
    List<String> words = name.split(' ');
    if (words.length < 2) {
      throw const FormatException('Name is too short to generate abbreviation');
    }

    List<String> firstTwoLetters =
        words.take(2).map((word) => word.substring(0, 1)).toList();
    return firstTwoLetters.join().toUpperCase();
  }
}
