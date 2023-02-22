Future<void> usersCount() {
  try {
    int count = await fetchUsersCount();
    print('$count');
  } catch (error) {
    print('Error fetching user count: $error');
  }
}
