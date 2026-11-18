// Student: Ahmed Abass MohammedAhmed Ali
// Reg no:  25968
const String regNo = '25968';
final int d = int.parse(regNo[regNo.length - 1]);
final int t = int.parse(regNo.substring(regNo.length - 2));

int countVowels(String text) {
  // by A.A.M.A
  String lower = text.toLowerCase();
  int total = 0;
  for (int i = 0; i < lower.length; i++) {
    if ('aeiou'.contains(lower[i])) {
      total++;
    }
  }
  return total;
}

void main() {
  // by A.A.M.A
  print('Reg no: $regNo | D = $d | T = $t');

  String myName = 'Ahmed Abass MohammedAhmed Ali';
  print('$myName has ${countVowels(myName)} vowels');
}
