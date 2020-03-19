import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:photon/core/usecases/usecase.dart';
import 'package:photon/features/borrower/domain/entities/borrower.dart';
import 'package:photon/features/borrower/domain/repositories/borrower_repository.dart';
import 'package:photon/features/borrower/domain/usecases/get_all_borrowers.dart';

class MockBorrowerRepository extends Mock implements BorrowerRepository {}

void main() {
  GetAllBorrowers usecase;
  MockBorrowerRepository mockBorrowerRepository;

  setUp(() {
    mockBorrowerRepository = MockBorrowerRepository();
    usecase = GetAllBorrowers(mockBorrowerRepository);
  });

  final tAllBorrowers = [
    Borrower(
      id: 1,
      name: 'Bruce Wayne',
      gender: 'M',
      dob: '1939-05-27',
      email: 'bruce.wayne@gmail.com',
      phone: '1234567890',
      address: '1007, Mountain Drive, Gotham, New Jersey, United States',
    ),
    Borrower(
      id: 2,
      name: 'Clark Kent',
      gender: 'M',
      dob: '1973-06-18',
      email: 'clark.kent@gmail.com',
      phone: '0987654321',
      address:
          '344 Clinton street, Apartment 3D, Metropolis, New York, United States',
    ),
  ];

  test('should get all borrowers from the repository', () async {
    when(mockBorrowerRepository.getAllBorrowers())
        .thenAnswer((_) async => Right(tAllBorrowers));

    final result = await usecase(NoParams());

    expect(result, Right(tAllBorrowers));
    verify(mockBorrowerRepository.getAllBorrowers());
    verifyNoMoreInteractions(mockBorrowerRepository);
  });
}
