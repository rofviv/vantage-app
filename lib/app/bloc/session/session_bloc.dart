import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:vantage_app/app/domain/repositories/repositories.dart';

part 'session_event.dart';
part 'session_state.dart';

class SessionBloc extends Bloc<SessionEvent, SessionState> {
  final AuthRepository _authRepository;
  SessionBloc({required AuthRepository authRepository})
      : _authRepository = authRepository,
        super(const SessionState()) {
    on<SessionEvent>((event, emit) {
      //
    });
  }
}
