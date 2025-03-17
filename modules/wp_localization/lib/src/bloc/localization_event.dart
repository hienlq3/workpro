part of 'localization_bloc.dart';

sealed class LocalizationEvent extends Equatable {
  const LocalizationEvent();

  @override
  List<Object?> get props => [];
}

final class LanguageChanged extends LocalizationEvent {
  const LanguageChanged(this.locale);

  final String? locale;

  @override
  List<Object?> get props => [locale];
}
