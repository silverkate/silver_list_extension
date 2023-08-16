import 'package:flutter_test/flutter_test.dart';
import 'package:silver_list_extension/silver_list_extension.dart';

void main() {
  test('Test firstWhereOrNull', () {
    final list = ['one', 'two', 'three'];
    final emptyList = [];

    expect(list.firstWhereOrNull((element) => element[0] == 't'), 'two');
    expect(list.firstWhereOrNull((element) => element[0] == 'q'), null);
    expect(emptyList.firstWhereOrNull((element) => element[0] == 'q'), null);
  });

  test('Test lastWhereOrNull', () {
    final list = ['one', 'two', 'three'];
    final emptyList = [];

    expect(list.lastWhereOrNull((element) => element[0] == 't'), 'three');
    expect(list.lastWhereOrNull((element) => element[0] == 'q'), null);
    expect(emptyList.lastWhereOrNull((element) => element[0] == 'q'), null);
  });

  test('Test randomOrNull', () {
    final list = ['one', 'two', 'three'];
    final emptyList = [];

    final randomElement = list.randomOrNull();
    final actual = list.contains(randomElement);

    expect(actual, true);
    expect(emptyList.randomOrNull(), null);
  });

  test('Test replaceWhere', () {
    final list = ['one', 'two', 'three'];

    list.replaceWhere((element) => element == 'one', 'replacement');

    expect(list, ['replacement', 'two', 'three']);
  });

  test('Test replace', () {
    final list = ['one', 'two', 'three'];

    list.replace('one', 'replacement');

    expect(list, ['replacement', 'two', 'three']);
  });
}
