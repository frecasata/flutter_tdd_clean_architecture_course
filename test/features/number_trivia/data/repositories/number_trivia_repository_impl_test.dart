import 'package:flutter_tdd_clean_architecture_course/core/platform/network_info.dart';
import 'package:flutter_tdd_clean_architecture_course/features/number_trivia/data/datasources/number_trivia_local_data_source.dart';
import 'package:flutter_tdd_clean_architecture_course/features/number_trivia/data/datasources/number_trivia_remote_data_source.dart';
import 'package:flutter_tdd_clean_architecture_course/features/number_trivia/data/repositories/number_trivia_repository_impl.dart';
import 'package:flutter_tdd_clean_architecture_course/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

class MockRemoteDataSource extends Mock
    implements NumberTriviaRemoteDataSource {}

class MockLocalDataSource extends Mock implements NumberTriviaLocalDataSource {}

class MockNetworkInfo extends Mock implements NetworkInfo {}

void main() {
  NumberTriviaRepositoryImpl repository;
  MockRemoteDataSource mockRemoteDataSource;
  MockLocalDataSource mockLocalDataSource;
  MockNetworkInfo mockNetworkInfo;

  setUp(() {
    mockRemoteDataSource = MockRemoteDataSource();
    mockLocalDataSource = MockLocalDataSource();
    mockNetworkInfo = MockNetworkInfo();
    repository = NumberTriviaRepositoryImpl(
      remoteDataSource: mockRemoteDataSource,
      localDataSource: mockLocalDataSource,
      networkInfo: mockNetworkInfo,
    );
  });
}
