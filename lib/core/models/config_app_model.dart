class ConfigAppModel {
  final String _nameApp;
  final String _version;
  final String _userName;
  final String _profileImage;
  final String _headerBgImage;
  final List<String> _aboutMe;

  String get nameApp => _nameApp;
  String get version => _version;
  String get userName => _userName;
  String get profileImage => _profileImage;
  String get headerBgImage => _headerBgImage;
  List<String> get aboutMe => _aboutMe;

  ConfigAppModel._({
    required nameApp,
    required version,
    required userName,
    required profileImage,
    required headerBgImage,
    required aboutMe,
  })  : _nameApp = nameApp,
        _version = version,
        _userName = userName,
        _profileImage = profileImage,
        _headerBgImage = headerBgImage,
        _aboutMe = aboutMe;

  factory ConfigAppModel.fromJson(Map<String, dynamic> json) {
    final appInfo = json["appInfo"];
    final userInfo = json["userInfo"];
    return ConfigAppModel._(
      nameApp: appInfo["nameApp"],
      version: appInfo["version"],
      userName: userInfo["userName"],
      profileImage: userInfo["profileImage"],
      headerBgImage: userInfo["headerBgImage"],
      aboutMe: userInfo["aboutMe"],
    );
  }
}
