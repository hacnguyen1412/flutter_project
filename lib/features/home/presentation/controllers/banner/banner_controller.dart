import 'package:injectable/injectable.dart';

abstract class BannerController {}

@Injectable(as: BannerController)
class BannerControllerImpl extends BannerController {}
