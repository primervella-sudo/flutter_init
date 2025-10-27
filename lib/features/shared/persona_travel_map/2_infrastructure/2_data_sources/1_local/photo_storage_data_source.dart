import 'dart:io';
import 'dart:typed_data';

import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

class PhotoStorageDataSource {
  Future<File> savePhoto({
    required Uint8List bytes,
    required String spotId,
    required String fileName,
  }) async {
    final dir = await _resolveSpotDirectory(spotId);
    if (dir == null) {
      throw StateError('Failed to resolve storage directory');
    }
    final file = File(p.join(dir.path, fileName));
    return file.writeAsBytes(bytes, flush: true);
  }

  Future<void> deletePhoto(String filePath) async {
    final file = File(filePath);
    if (await file.exists()) {
      await file.delete();
    }
  }

  Future<void> deleteBySpot(String spotId) async {
    final dir = await _resolveSpotDirectory(spotId, createIfMissing: false);
    if (dir != null && await dir.exists()) {
      await dir.delete(recursive: true);
    }
  }

  Future<Directory?> _resolveSpotDirectory(
    String spotId, {
    bool createIfMissing = true,
  }) async {
    final root = await getApplicationDocumentsDirectory();
    final picturesDir = Directory(p.join(root.path, 'pictures', spotId));
    if (await picturesDir.exists()) {
      return picturesDir;
    }
    if (createIfMissing) {
      await picturesDir.create(recursive: true);
      return picturesDir;
    }
    return null;
  }
}
