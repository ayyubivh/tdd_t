class ResponseClassify<T> {
  Status status;
  T? data;
  dynamic error;

  ResponseClassify.loading() : status = Status.LOADING;
  ResponseClassify.initial() : status = Status.INITIAL;
  ResponseClassify.completed(this.data) : status = Status.COMPLETED;

  ResponseClassify.error(this.error) : status = Status.ERROR;

  @override
  String toString() {
    return "Status : $status \n Message :  \n Data : $data Error : $error";
  }
}

enum Status {
  LOADING,
  COMPLETED,
  ERROR,
  INITIAL,
  initial,
}
