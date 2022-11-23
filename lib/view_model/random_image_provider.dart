import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rounded_task/service/random_image_service.dart';

final getImage = FutureProvider((ref) => ref.watch(apiProvider).getResponse());
