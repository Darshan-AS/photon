import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:photon/features/borrower/domain/entities/borrower.dart';
import 'package:photon/features/borrower/domain/repositories/borrower_repository.dart';
import 'package:photon/features/borrower/domain/usecases/get_borrower.dart';

class MockBorrowerRepository extends Mock implements BorrowerRepository {}

void main() {
  GetBorrower usecase;
  MockBorrowerRepository mockBorrowerRepository;

  setUp(() {
    mockBorrowerRepository = MockBorrowerRepository();
    usecase = GetBorrower(mockBorrowerRepository);
  });

  final tId = 1;
  final tBorrower = Borrower(
    id: 1,
    name: 'Bruce Wayne',
    gender: 'M',
    dob: '27/05/1939',
    email: 'bruce.wayne@gmail.com',
    phone: '1234567890',
    address: '1007, Mountain Drive, Gotham, New Jersey, United States',
  );

  test('should get borrower from the repository', () async {
    when(mockBorrowerRepository.getBorrower(any))
        .thenAnswer((_) async => Right(tBorrower));

    final result = await usecase(Params(id: tId));

    expect(result, Right(tBorrower));
    verify(mockBorrowerRepository.getBorrower((tId)));
    verifyNoMoreInteractions(mockBorrowerRepository);
  });
}
