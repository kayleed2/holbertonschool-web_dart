String longestUniqueSubstring(String str) {
  if (str == null || str.isEmpty) {
    return '';
  }
  int n = str.length;
  int maxLength = 0;
  int start = 0;
  int end = 0;
  Map<String, int> map = {};
  for (int i = 0, j = 0; j < n; j++) {
    String c = str[j];
    if (map.containsKey(c)) {
      i = i > map[c] ? i : map[c] + 1;
    }
    if (j - i + 1 > maxLength) {
      maxLength = j - i + 1;
      start = i;
      end = j;
    }
    map[c] = j;
  }
  return str.substring(start, end + 1);
}
