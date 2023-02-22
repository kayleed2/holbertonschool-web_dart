Future<int> fetchUsersCount() => Future.delayed(
      const Duration(seconds: 2),
      () => 19,
    );

main() async {
  await usersCount();
}

Future<void> usersCount() {
	return fetchUsersCount().then((value) => print('$value'));
}
