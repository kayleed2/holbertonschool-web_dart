public static String longestUniqueSubstring(String str) {
    if (str == null || str.isEmpty()) {
        return "";
    }
    int n = str.length();
    int maxLength = 0;
    int start = 0;
    int end = 0;
    Map<Character, Integer> map = new HashMap<>();
    for (int i = 0, j = 0; j < n; j++) {
        char c = str.charAt(j);
        if (map.containsKey(c)) {
            i = Math.max(map.get(c) + 1, i);
        }
        if (j - i + 1 > maxLength) {
            maxLength = j - i + 1;
            start = i;
            end = j;
        }
        map.put(c, j);
    }
    return str.substring(start, end + 1);
}
