Future<void> usersCount() async {
  try {
    int count = await fetchUsersCount();
    print('Number of users: $count');
  } catch (error) {
    print('Error fetching user count: $error');
  }
}

Future<int> fetchUsersCount() async {
  // Simulate fetching data from an API
  await Future.delayed(Duration(seconds: 1));
  return 10; // Return a dummy value for the number of users
}
