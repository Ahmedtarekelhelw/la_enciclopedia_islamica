import 'dart:convert';
import '../../../../core/constants/app_keys.dart';
import '../../../../core/services/archive_service.dart';
import '../../../../core/services/shared_preferences_service.dart';
import 'package:get/get.dart';
import '../../domain/entities/fixed_entities.dart';

abstract class MohammadMessangerLocalDataSource {
  Future<List<FixedEntities>> getArtical();
}

class MohammadMessangerLocalDataSourceImp
    extends MohammadMessangerLocalDataSource {
  final SharedPreferencesService sharedPreferencesService;
  final ArchiveService archiveService;

  MohammadMessangerLocalDataSourceImp({
    required this.sharedPreferencesService,
    required this.archiveService,
  });
  @override
  Future<List<FixedEntities>> getArtical() async {
    String? fileContent =
        await archiveService.readFile(name: AppKeys.muhammadTheMessengerOfGod);
    List<FixedEntities> articals = [];
    if (fileContent != null) {
      Map jsonData = json.decode(fileContent);
      jsonData['Muhammad-the-messenger-of-God'].forEach((key, value) {
        articals.add(FixedEntities(name: key, content: value));
      });
    }

    return Future.value(articals);
  }
}
