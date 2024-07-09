/*
Abstract class representing a use case that performs an asynchronous operation and returns a result.
The [Type] parameter represents the type of result returned by the use case.
The [Params] parameter represents the type of parameters accepted by the use case.
*/
abstract class UseCase<Type, Params> {
  /// Executes the use case

  /// Returns a Future containing the result of the use case operation.
  Future<Type> call(Params params);
}

/// Abstract class representing a use case that performs a stream-based  operationsß

abstract class StreamUseCase<Type, Params> {
  /// Executes the use case

  /// Returns a Stream containing the results of the use case operation.
  Stream<Type> call(Params params);
}

/* 
Class representing a parameterless object.
This class is typically used when a use case does not require any parameters.
*/
class NoParams {}
