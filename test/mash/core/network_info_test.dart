import 'package:flutter_test/flutter_test.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:mash/core/connection_checker.dart';
import 'package:mockito/mockito.dart';

import '../helpers/test_helpers.mocks.dart';

// Mock class for InternetConnectionChecker

void main() {
  group('ConnectionCheckerImpl', () {
    late ConnectionCheckerImpl connectionChecker;
    late MockInternetConnectionChecker mockInternetConnectionChecker;

    setUp(() {
      mockInternetConnectionChecker = MockInternetConnectionChecker();
      connectionChecker = ConnectionCheckerImpl(mockInternetConnectionChecker);
    });

    test('isConnected should return true when there is an internet connection',
        () async {
      // Arrange
      when(mockInternetConnectionChecker.hasConnection)
          .thenAnswer((_) async => true); // Fix the setup for hasConnection

      // Act
      final isConnected = await connectionChecker.isConnected;

      // Assert
      expect(isConnected, true);
    });

    test('isConnected should return false when there is no internet connection',
        () async {
      // Arrange
      when(mockInternetConnectionChecker.hasConnection)
          .thenAnswer((_) async => false); // Fix the setup for hasConnection

      // Act
      final isConnected = await connectionChecker.isConnected;

      // Assert
      expect(isConnected, false);
    });

    test('getConnectionInfo should return a stream of InternetConnectionStatus',
        () {
      // Arrange
      final testStatusStream = Stream<InternetConnectionStatus>.fromIterable([
        InternetConnectionStatus.connected,
        InternetConnectionStatus.disconnected
      ]);

      when(mockInternetConnectionChecker.onStatusChange).thenAnswer(
          (_) => testStatusStream); // Fix the setup for onStatusChange

      // Act
      final connectionInfoStream = connectionChecker.getConnectionInfo();

      // Assert
      expect(
          connectionInfoStream,
          emitsInOrder([
            InternetConnectionStatus.connected,
            InternetConnectionStatus.disconnected
          ]));
    });
  });
}
