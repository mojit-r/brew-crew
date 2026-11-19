class CustomUser {
  final String uid;
  final bool isAnonymous;

  CustomUser({required this.uid, required this.isAnonymous});

  @override
  String toString() {
    return 'CustomUser(uid: $uid, isAnonymous: $isAnonymous)';
  }
}
