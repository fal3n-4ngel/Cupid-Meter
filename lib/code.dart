import 'dart:math';
import 'dart:core';
import 'globals.dart' as globals;

lcalc(n1, n2) {
  globals.result = 'j';
  globals.rand = 0;
  if (n1.length <= 1 || n2.length <= 1) {
    globals.result = ':(';
    return globals.result;
  } else if (n1 == n2) {
    globals.result = '100 % :)';
    return globals.result;
  } else {
    Random random = new Random();
    int rand = random.nextInt(10);
    globals.rand = rand;
    var ln1 = n1.length;
    var ln2 = n2.length;
    var sum = ln1 + ln2;
    return lsum(sum);
  }
}

lsum(sum) {
  print('Finals');
  if (sum > 20) {
    while (sum >= 20) {
      sum -= 3;
    }
    globals.sum = ((sum / 5) * 39) ~/ 1;
  } else if (sum <= 10) {
    while (sum <= 10) {
      sum += 3;
    }
    print(globals.sum);
    globals.sum = ((sum / 5) * 36) ~/ 1;
  } else {
    globals.sum = ((sum / 5) * 37) ~/ 1;
  }
  return lfinal(globals.result);
}

lfinal(result) {
  if (globals.sum >= 90) {
    while (globals.sum >= 100) {
      globals.sum -= globals.rand;
    }
  } else if (globals.sum >= 90) {
    globals.sum -= globals.rand;
  }

  globals.sum = globals.sum ~/ 1;
  globals.result = globals.sum.toString();
  globals.result += " :)";
  return globals.result;
}
