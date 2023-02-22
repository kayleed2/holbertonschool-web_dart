int fact(int f) {
  if (f <= 0) {
    // base case: if f is less than or equal to 0, return 0
    return 0;
  } else if (f == 1) {
    // base case: if f is equal to 1, return 1
    return 1;
  } else {
    // recursive case: multiply f by fact(f-1) to get the factors of f
    return f * fact(f - 1);
  }
}
