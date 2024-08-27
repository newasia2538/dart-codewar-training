import 'dart:math' as math;

String spinWords(String str) {
  var arrayStr = str.split(' ');
  List<String> newArr = [];

  for (var element in arrayStr) {
    if (element.length >= 5) {
      var newStr = "";
      for (var i = element.length - 1; i >= 0; i--) {
        newStr += element[i];
      }
      newArr.add(newStr);
    } else {
      newArr.add(element);
    }
  }

  return newArr.join(' ');
}

bool comp(List<int> a1, List<int> a2) {
  Map<int, int> map1 = {};
  for (var element in a1) {
    var key = math.pow(element, 2).toInt();
    if (map1.containsKey(key)) {
      map1.update(key, (value) => value + 1);
    } else {
      map1[key] = 1;
    }
  }

  Map<int, int> map2 = {};
  for (var element in a2) {
    if (map2.containsKey(element)) {
      map2.update(element, (value) => value + 1);
      if (map2[element]! > map1[element]!) return false;
    } else {
      if (!map1.containsKey(element)) return false;
      map2[element] = 1;
    }
  }
  return true;
}

int countSmileys(List<String> arr) {
  Map<String, int> map = {
    ':)': 0,
    ';)': 0,
    ':D': 0,
    ';D': 0,
    ';-D': 0,
    ':-D': 0,
    ';~D': 0,
    ':~D': 0,
    ':~)': 0,
    ';~)': 0,
    ';-)': 0,
    ':-)': 0
  };

  for (var element in arr) {
    if (map.containsKey(element)) map.update(element, (value) => value + 1);
  }

  return map.values.reduce((value, element) => value + element);
}
