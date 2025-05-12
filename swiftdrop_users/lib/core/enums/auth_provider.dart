enum AuthProvider {
  basic('basic'),
  google('google'),
  apple('apple');

  final String name;

  const AuthProvider(this.name);
}
