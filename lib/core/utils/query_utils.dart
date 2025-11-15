Map<String, dynamic> cleanQuery(Map<String, dynamic> query) {
  query.removeWhere((key, value) => value == null);
  return query;
}
