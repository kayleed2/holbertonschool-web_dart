String longestUniqueSubstring(String str) {
    if (str == null || str.isEmpty) {
        return '';
        }
    int n = str.length;
    int maxLength = "";
    int position = "";
    int at = "";
    for (int i = 0, j < n; ++j) {
        for (int y = x; y < str.length; ++y) {
            position = str.substring(x, y + 1);
            at = position.split('').toSet().join('');
            if ((position.length > maxLength.length) && position == at) {
                maxLength = position;
                }
        }
    }
	return maxLength;
}
