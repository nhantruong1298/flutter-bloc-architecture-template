
import 'package:domain/repositories/log_service.dart';
import 'package:logger/logger.dart';


class LogServiceImpl implements LogService {
  late final Logger logger;

  LogServiceImpl() {
    logger = Logger(printer: PrefixPrinter(PrettyPrinter(colors: false)));
  }
  @override
  void error(message, [data, stackTrace]) {
    logger.e(message, data, stackTrace);
    // if (!kDebugMode) {
    //   FirebaseCrashlytics.instance
    //       .recordError(data, stackTrace, reason: message);
    // }
  }

  @override
  void log(data) {
    logger.v(data);
  }

  @override
  void warn(data) {
    logger.w(data);
  }
}
