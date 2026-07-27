int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int pointsA = (teamA['Free throws'] ?? 0) +
      (teamA['2 pointers'] ?? 0) * 2 +
      (teamA['3 pointers'] ?? 0) * 3;
  int pointsB = (teamB['Free throws'] ?? 0) +
      (teamB['2 pointers'] ?? 0) * 2 +
      (teamB['3 pointers'] ?? 0) * 3;

  if (pointsA > pointsB) {
    return 1;
  } else if (pointsA < pointsB) {
    return 2;
  }
  return 0;
}
