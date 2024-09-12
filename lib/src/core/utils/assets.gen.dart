class Assets {
  Assets._();

  static final images = AssetsImages._();
  static const svgs = AssetsSvgs._();
}

class AssetsImages {
  AssetsImages._();

  final flutterLogoPNG = 'assets/images/flutter_logo.png';
  final facebookPNG = 'assets/images/facebook.png';
  final googlePNG = 'assets/images/google.png';
  final twitterPNG = 'assets/images/twitter.png';
}

class AssetsSvgs {
  const AssetsSvgs._();

  final lockSVG = 'assets/svgs/lock.svg';
  final messageSVG = 'assets/svgs/message.svg';
  final phoneSVG = 'assets/svgs/phone.svg';
  final profileSVG = 'assets/svgs/profile.svg';
}
