bool isPalindrome(String s) {
  if (s == null || s.length < 3) {
    return false;
  }
  int left = 0;
  int right = s.length - 1;
  while (left < right) {
    if (s[left] != s[right]) {
      return false;
    }
    left++;
    right--;
  }
  return true;
}

String longestPalindrome(String s) {
  if (s == null || s.length < 3) {
    return "none";
  }
  String longest = '';
  for (int i = 0; i < s.length - 1; i++) {
    for (int j = i + 1; j < s.length; j++) {
      String substring = s.substring(i, j + 1);
      if (isPalindrome(substring) && substring.length > longest.length) {
        longest = substring;
      }
    }
  }
  return longest.isNotEmpty ? longest : "none";
}
