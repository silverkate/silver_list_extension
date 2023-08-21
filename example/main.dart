import 'package:silver_list_extension/silver_list_extension.dart';

void main() {
  final list = ['q', 'qw', 'aq', 'sq', 'eq'];
  final emptyList = [];

  print(list.firstWhereOrNull((element) => element[0] == 'a'));
  print(list.lastWhereOrNull((element) => element[0] == 'b'));
  print(list.randomOrNull());
  print(emptyList.randomOrNull());
  list.replaceWhere((element) => element.contains('q'), '1');
  print(list);
  list.replace('1', '12345678');
  print(list);
  list.replaceAt(0, 'replacement');
  print(list);
}
