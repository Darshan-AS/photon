import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:photon/core/util/input_converter.dart';
import 'package:photon/features/borrower/data/datasources/borrower_remote_data_source.dart';
import 'package:photon/features/borrower/data/repositories/borrower_repository_impl.dart';
import 'package:photon/features/borrower/domain/repositories/borrower_repository.dart';
import 'package:photon/features/borrower/domain/usecases/get_all_borrowers.dart';
import 'package:photon/features/borrower/domain/usecases/get_borrower.dart';
import 'package:photon/features/borrower/presentation/bloc/borrower_detail/bloc.dart';
import 'package:photon/features/borrower/presentation/bloc/borrowers_list/bloc.dart';

final serviceLocator = GetIt.instance;

Future<void> init() async {
// Features

  // Bloc
  serviceLocator.registerFactory(() => BorrowersListBloc(
        getAllBorrowers: serviceLocator(),
        inputConverter: serviceLocator(),
      ));

  serviceLocator.registerFactory(() => BorrowerDetailBloc(
        getBorrower: serviceLocator(),
        inputConverter: serviceLocator(),
      ));

  // Use cases
  serviceLocator.registerLazySingleton(() => GetBorrower(serviceLocator()));
  serviceLocator.registerLazySingleton(() => GetAllBorrowers(serviceLocator()));

  // Repositories
  serviceLocator.registerLazySingleton<BorrowerRepository>(
      () => BorrowerRepositoryImpl(remoteDataSource: serviceLocator()));

  // Data sources
  serviceLocator.registerLazySingleton<BorrowerRemoteDataSource>(
      () => BorrowerRemoteDataSourceImpl(client: serviceLocator()));

// Core
  serviceLocator.registerLazySingleton(() => InputConverter());

// External
  serviceLocator.registerLazySingleton(() => http.Client());
}
