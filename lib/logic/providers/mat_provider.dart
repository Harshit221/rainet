import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rainet/component/mat.dart';

final matProvider = ChangeNotifierProvider<Mat>((ref) {
  return Mat();
});
