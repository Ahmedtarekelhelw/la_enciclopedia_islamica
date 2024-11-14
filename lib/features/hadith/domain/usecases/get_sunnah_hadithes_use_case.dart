import 'package:dartz/dartz.dart';
import 'package:la_enciclopedia_islamica/core/errors/failures.dart';
import 'package:la_enciclopedia_islamica/features/hadith/data/models/hadith_model.dart';
import 'package:la_enciclopedia_islamica/features/hadith/domain/repository/hadith_repo.dart';

class GetSunnahHadithesUseCase {
  final HadithRepo hadithRepo;

  GetSunnahHadithesUseCase(this.hadithRepo);

  Future<Either<Failure, List<SunnahHadithModel>>> call() async {
    return await hadithRepo.getHadithes();
  }
}