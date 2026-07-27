String longestUniqueSubstring(String str) {
  String longest = '';
  String current = '';

  for (int i = 0; i < str.length; i++) {
    String ch = str[i];
    int index = current.indexOf(ch);
    if (index != -1) {
      current = current.substring(index + 1);
    }
    current += ch;
    if (current.length > longest.length) {
      longest = current;
    }
  }

  return longest;
}
