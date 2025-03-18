import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:wp_core/core_package.dart';
import 'package:wp_localization/generated/app_localizations.dart';

part 'localization_event.dart';
part 'localization_state.dart';

class LocalizationBloc extends Bloc<LocalizationEvent, LocalizationState> {
  LocalizationBloc() : super(LocalizationState()) {
    on<LanguageChanged>(_onLanguageChanged);
    final languageCode = AppConstraint.getLanguageCode();
    if (languageCode.isNotEmpty) {
      add(LanguageChanged(languageCode));
    }
  }

  Future<void> _onLanguageChanged(
    LanguageChanged event,
    Emitter<LocalizationState> emit,
  ) async {
    final result = state.supportedLocales.firstWhere(
      (locale) => locale.languageCode == event.locale,
      orElse: () => state.supportedLocales.first,
    );
    await AppConstraint.setLanguageCode(result.languageCode);
    emit(state.copyWith(locale: result));
  }
}
