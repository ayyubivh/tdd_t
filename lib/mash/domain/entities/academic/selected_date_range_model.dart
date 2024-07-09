class SelectedRangeModel {
  String? fromDate;
  String? toDate;

  SelectedRangeModel([this.fromDate, this.toDate]);
  SelectedRangeModel copyWith({String? fromDate, String? toDate}) {
    return SelectedRangeModel(
      fromDate ?? this.fromDate,
      toDate ?? this.toDate,
    );
  }
}
