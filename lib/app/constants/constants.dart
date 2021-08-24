import 'package:flutter_template/app/data/models/language.model.dart';
import 'package:flutter_template/app/enums/enums.dart';

import 'package:flutter/material.dart';

abstract class AppConst {
  static List<LanguageModel> languages = [
    LanguageModel(code: LanguageEnum.English, name: "English"),
    LanguageModel(code: LanguageEnum.Vietnam, name: "Vietnam"),
  ];
}

const List<Locale> SUPPORTED_LOCALES = [
  Locale(LanguageEnum.English, ''),
  Locale(LanguageEnum.Vietnam, ''),
];

const Locale FALLBACK_LOCALE = Locale(LanguageEnum.English, '');
