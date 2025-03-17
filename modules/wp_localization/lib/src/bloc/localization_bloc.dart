import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:wp_localization/generated/app_localizations.dart';

part 'localization_event.dart';
part 'localization_state.dart';

class LocalizationBloc extends Bloc<LocalizationEvent, LocalizationState> {
  LocalizationBloc() : super(LocalizationState()) {
    on<LanguageChanged>(_onLanguageChanged);
    Locale deviceLocale = PlatformDispatcher.instance.locale;
    add(LanguageChanged(deviceLocale.languageCode));
  }

  void _onLanguageChanged(
    LanguageChanged event,
    Emitter<LocalizationState> emit,
  ) {
    final result = state.supportedLocales.firstWhere(
      (locale) => locale.languageCode == event.locale,
      orElse: () => state.supportedLocales.first,
    );
    emit(state.copyWith(locale: result));
  }
}
