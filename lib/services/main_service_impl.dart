import '../contracts.dart';

class MainServiceImpl implements MainService {
  @override
  Future<String> doStuff({required DateTime dateTime}) async => dateTime.microsecondsSinceEpoch.toString();
}
