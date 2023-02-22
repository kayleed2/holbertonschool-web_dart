int whoWins(Map<String, int> team1, Map<String, int> team2) {
  // calculate the total number of points for each team
  int team1Points = (team1["free throws"] ?? 0) + (team1["2 pointers"] ?? 0) * 2 + (team1["3 pointers"] ?? 0) * 3;
  int team2Points = (team2["free throws"] ?? 0) + (team2["2 pointers"] ?? 0) * 2 + (team2["3 pointers"] ?? 0) * 3;
  
  // determine the winning team
  if (team1Points > team2Points) {
    return 1;
  } else if (team1Points < team2Points) {
    return 2;
  } else {
    return 0;
  }
}
