int adjacentElementsProduct(array) {
  if (array.length < 2) return 0;

  int result = array[1] * array[0];

  for (var index = 2; index < array.length; index++) {
    result = (array[index] * array[index - 1] > result)
        ? array[index] * array[index - 1]
        : result;
  }

  return result;
}

int maxMultiple(divisor, bound) {
  if (bound <= 0) return 0;

  return (bound % divisor == 0) ? bound : (bound - (bound % divisor));
}

List<String> capitalize(String x) {
  String first = "";
  String second = "";
  for (var index = 0; index < x.length; index++) {
    var c = x.substring(index, index + 1);
    first += (index % 2 == 0) ? c.toUpperCase() : c;
    second += (index % 2 != 0) ? c.toUpperCase() : c;
  }
  return [first, second];
}
