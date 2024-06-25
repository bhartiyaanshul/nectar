import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:nectar/core/app_locator.dart';
import 'package:nectar/core/service/storage_service.dart';

class SupabaseImage extends StatelessWidget {
  final String path;
  final double? height;
  final double? width;
  final BoxFit? fit;
  const SupabaseImage({super.key, required this.path, this.height, this.width, this.fit});

  @override
  Widget build(BuildContext context) {
    final _storageService = locator<StorageService>();
    return Image.network(_storageService.getPublicUrl(path), height: height , width: width, fit: fit,);
  }
}