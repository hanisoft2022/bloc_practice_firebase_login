part of 'app_bloc.dart';

enum AppStatus { authenticated, unauthenticated }

final class AppState extends Equatable {
  final AppStatus status;
  final User user;

  const AppState({User user = User.empty})
    : this._(
        status: user == User.empty ? AppStatus.unauthenticated : AppStatus.authenticated,
        user: user,
      );

  const AppState._({required this.status, this.user = User.empty});

  @override
  List<Object> get props => [status, user];
}
