Future<String> fetchUser() =>
    // Imagine that this function is
    // more complex and slow.
    Future.delayed(
      const Duration(seconds: 2),
      () => throw 'Cannot locate user',
    );
main() async {
  getUser();
}

Future<void> getUser() async {
   try {
		print(await fetchUser());
	} catch (error) {
		print("error caught: $error");
	}
}