Future<void> usersCount() {
  try {
    int count = fetchUsersCount();
    print('$count');
  } catch (error) {
    print('Error fetching user count: $error');
  }
}
