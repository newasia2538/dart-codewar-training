import 'package:test/test.dart';
import '../code_war_problems/code_war_six_kyu.dart';

void main() {
  group("Stop gninnipS My sdroW!", () {
    test("Testing for Welcome", () {
      expect(spinWords("Welcome"), equals("emocleW"));
    });
    test("Testing for Hey fellow warriors", () {
      expect(spinWords("Hey fellow warriors"), equals("Hey wollef sroirraw"));
    });
    test("Testing for This is a test", () {
      expect(spinWords("This is a test"), equals("This is a test"));
    });
    test("Testing for This is another test", () {
      expect(spinWords("This is another test"), equals("This is rehtona test"));
    });
    test("Testing for You are almost to the last test", () {
      expect(spinWords("You are almost to the last test"),
          equals("You are tsomla to the last test"));
    });
    test("Testing for Just kidding there is still one more", () {
      expect(spinWords("Just kidding there is still one more"),
          equals("Just gniddik ereht is llits one more"));
    });
    test("Testing for Seriously this is the last one", () {
      expect(spinWords("Seriously this is the last one"),
          equals("ylsuoireS this is the last one"));
    });
  });

  dotest(List<int> a1, List<int> a2, bool exp) {
    test("Testing for $a1: $a2:", () => expect(comp(a1, a2), equals(exp)));
  }

  group("Are they the 'same'?", () {
    var a1 = [121, 144, 19, 161, 19, 144, 19, 11];
    var a2 = [
      11 * 11,
      121 * 121,
      144 * 144,
      19 * 19,
      161 * 161,
      19 * 19,
      144 * 144,
      19 * 19
    ];
    dotest(a1, a2, true);
    a1 = [121, 144, 19, 161, 19, 144, 19, 11];
    a2 = [
      11 * 21,
      121 * 121,
      144 * 144,
      19 * 19,
      161 * 161,
      19 * 19,
      144 * 144,
      19 * 19
    ];
    dotest(a1, a2, false);
    a1 = [2, 2, 3];
    a2 = [4, 9, 9];
    dotest(a1, a2, false);
  });

  group("Count the smiley faces!", () {
    test("Testing for []", () => expect(countSmileys([]), equals(0)));
    test("Testing for [':)', ';(', ';}', ':-D']",
        () => expect(countSmileys([':)', ';(', ';}', ':-D']), equals(2)));
    test(
        "Testing for [';]', ':[', ';*', ':\$', ';-D']",
        () =>
            expect(countSmileys([';]', ':[', ';*', ':\$', ';-D']), equals(1)));
    test("Testing for [':)',':(',':D',':O',':;']",
        () => expect(countSmileys([':)', ':(', ':D', ':O', ':;']), equals(2)));
    test("Testing for [':-)',';~D',':-D',':_D']",
        () => expect(countSmileys([':-)', ';~D', ':-D', ':_D']), equals(3)));
    test("Testing for [':---)','))',';~~D',';D']",
        () => expect(countSmileys([':---)', '))', ';~~D', ';D']), equals(1)));
    test("Testing for [';~)',':)',':-)',':--)']",
        () => expect(countSmileys([';~)', ':)', ':-)', ':--)']), equals(3)));
    test("Testing for [':o)',':--D',';-~)']",
        () => expect(countSmileys([':o)', ':--D', ';-~)']), equals(0)));
  });
}
