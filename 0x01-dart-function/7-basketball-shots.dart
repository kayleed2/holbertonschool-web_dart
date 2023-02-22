int whoWins(Map<String, int> team1, Map<String, int> team2) {
  int team1Points = 0;
  int team2Points = 0;
  // Calculate team1 points
  if (team1.containsKey('free throw')) {
    team1Points += team1['free throw'];
  }
  if (team1.containsKey('2 pointer')) {
    team1Points += team1['2 pointer'] * 2;
  }
  if (team1.containsKey('3 pointer')) {
    team1Points += team1['3 pointer'] * 3;
  }
  // Calculate team2 points
  if (team2.containsKey('free throw')) {
    team2Points += team2['free throw'];
  }
  if (team2.containsKey('2 pointer')) {
    team2Points += team2['2 pointer'] * 2;
  }
  if (team2.containsKey('3 pointer')) {
    team2Points += team2['3 pointer'] * 3;
  }
  // Compare points and return winner
  if (team1Points > team2Points) {
    return 1;
  } else if (team1Points < team2Points) {
    return 2;
  } else {
    return 0;
  }
}
