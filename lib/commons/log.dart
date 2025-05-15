import 'dart:convert';
import 'dart:developer' as developer;

import 'package:flutter/foundation.dart';

class Log {
  static const xLG = 'MM';
  static bool logOn = kReleaseMode ? false : true;

  static print(Object text, {String? titulo}) {
    if (logOn) {
      String init;
      String end = ':';
      String comp = '.';
      String strLog;

      if (titulo == null) {
        init = 'log';
      } else {
        init = titulo;
      }

      int qtd = init.length;
      strLog = '$init${comp.padRight(19 - qtd, '.')}$end $text';
      developer.log(strLog, name: xLG);
    }
  }

  static printJson(Object object, {String? titulo}) {
    const jsonEnc = JsonEncoder();
    var encoded = jsonEnc.convert(object);

    if (logOn) {
      String init;
      String end = ':';
      String comp = '.';
      String strLog;

      if (titulo == null) {
        init = 'log';
      } else {
        init = titulo;
      }

      int qtd = init.length;
      strLog = '$init${comp.padRight(19 - qtd, '.')}$end $encoded';
      developer.log(strLog, name: xLG);
    }
  }
}
