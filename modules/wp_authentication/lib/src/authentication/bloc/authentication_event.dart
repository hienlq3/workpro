part of 'authentication_bloc.dart';

sealed class AuthenticationEvent {}

final class AuthenticationSubscriptionRequested extends AuthenticationEvent {}

final class AuthenticationLogoutPressed extends AuthenticationEvent {}
