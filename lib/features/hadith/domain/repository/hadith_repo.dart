import 'package:dartz/dartz.dart';
import 'package:la_enciclopedia_islamica/core/errors/failures.dart';
import 'package:la_enciclopedia_islamica/features/hadith/data/models/hadith_model.dart';
import 'package:la_enciclopedia_islamica/features/hadith/presentation/model/sunnah_data_model.dart';

abstract class HadithRepo {
  Future<Either<Failure, List<SunnahHadithModel>>> getHadithes();
  Future<Either<Failure, List<SunnahDataModel>>> getSunnah(String path);
}
