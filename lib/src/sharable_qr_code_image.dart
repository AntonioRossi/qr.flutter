import 'dart:ui' as ui;

import 'package:flutter/foundation.dart';

/// This class is listenable by a provider
class ShareableQrCodeImage with ChangeNotifier {
  ui.Image _sharableImage;

  /// The image that has been generated
  ui.Image get sharableImage => _sharableImage;

  @override
  void dispose() {
    super.dispose();
  }

  /// Called in qr_image.dart
  void setImage(Future<ui.Image> futureImage) async {
    _sharableImage = await futureImage;
    notifyListeners();
  }
}
