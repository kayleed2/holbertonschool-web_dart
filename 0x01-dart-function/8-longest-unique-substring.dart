String longestUniqueSubstring(String str) {
    int n = str.length;
    String maxLength = "";
    String position = "";
    String at = "";
    for (int i = 0; i < n; ++i) {
        for (int x = i; x < str.length; ++x) {
            position = str.substring(i, x + 1);
            at = position.split('').toSet().join('');
            if ((position.length > maxLength.length) && position == at) {
                maxLength = position;
                }
        }
    }
	return maxLength;
}
