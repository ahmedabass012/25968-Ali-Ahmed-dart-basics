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

String initials(String fullName) {
  // by A.A.M.A
  List<String> parts = fullName.split(' ');
  String result = '';
  for (String part in parts) {
    if (part.isNotEmpty) {
      result += part[0].toUpperCase() + '.';
    }
  }
  return result;
}

void drawTriangle(int height) {
  // by A.A.M.A
  for (int row = 1; row <= height; row++) {
    String symbol = row % 2 == 1 ? '*' : '#';
    print(' ' * (height - row) + symbol * row);
  }
}

void main() {
  // by A.A.M.A
  print('Reg no: $regNo | D = $d | T = $t');

  String myName = 'Ahmed Abass MohammedAhmed Ali';
  print('$myName has ${countVowels(myName)} vowels');

  print(initials(myName));
  print(initials(' ana  uwase '));
  print(initials(' '));

  drawTriangle(d + 3);
  drawTriangle(0);
  drawTriangle(-2);
}
