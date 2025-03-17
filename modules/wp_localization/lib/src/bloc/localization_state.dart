part of 'localization_bloc.dart';

class LocalizationState extends Equatable {
  final Locale? locale;
  final List<Locale> supportedLocales;

  const LocalizationState({
    this.locale,
    this.supportedLocales = AppLocalizations.supportedLocales,
  });

  LocalizationState copyWith({Locale? locale, List<Locale>? supportedLocales}) {
    return LocalizationState(
      locale: locale ?? this.locale,
      supportedLocales: supportedLocales ?? this.supportedLocales,
    );
  }

  @override
  List<Object?> get props => [locale, supportedLocales];
}
