import 'package:photon/features/borrower/data/models/borrower_model.dart';

abstract class BorrowerRemoteDataSource {
  Future<BorrowerModel> getBorrower(int id);

  Future<List<BorrowerModel>> getAllBorrowers();
}
