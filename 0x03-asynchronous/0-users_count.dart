Future<int> fetchUsersCount() => Future.delayed(
      const Duration(seconds: 2),
      () => 19,
    );

main() async {
  await usersCount();
}

Future<void> usersCount() {
  try {
    int count = fetchUsersCount();
    print('$count');
  } catch (error) {
    print('Error fetching user count: $error');
  }
}
