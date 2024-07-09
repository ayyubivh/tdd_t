// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaymentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            PaymentStatusType paymentStatusType, String userId, String? trackId)
        getPaymentDashboard,
    required TResult Function(String id) selectPaymentsCheckboxEvent,
    required TResult Function(int? index) selectedItemIndex,
    required TResult Function(
            String totalAmount, String installmentId, String studentId)
        getPaymentFinalAmount,
    required TResult Function(String email, String student, String mobile,
            String remark, String installmentId, String studentId)
        getPaymentOrderId,
    required TResult Function(
            String email,
            String student,
            String mobile,
            String remark,
            String installmentId,
            String studentId,
            String orderId)
        getPaymentTokenAndOpenPayment,
    required TResult Function(
            String? orderId,
            String? userName,
            String? email,
            String? remark,
            String? studenId,
            String? mobile,
            String? installMentId)
        getPaymentCompleteResponse,
    required TResult Function() disposeEvent,
    required TResult Function(String studentId, ReceiptType receiptType)
        getFeeReceipt,
    required TResult Function(String docName) getFeeReceiptByDocName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentStatusType paymentStatusType, String userId,
            String? trackId)?
        getPaymentDashboard,
    TResult? Function(String id)? selectPaymentsCheckboxEvent,
    TResult? Function(int? index)? selectedItemIndex,
    TResult? Function(
            String totalAmount, String installmentId, String studentId)?
        getPaymentFinalAmount,
    TResult? Function(String email, String student, String mobile,
            String remark, String installmentId, String studentId)?
        getPaymentOrderId,
    TResult? Function(
            String email,
            String student,
            String mobile,
            String remark,
            String installmentId,
            String studentId,
            String orderId)?
        getPaymentTokenAndOpenPayment,
    TResult? Function(
            String? orderId,
            String? userName,
            String? email,
            String? remark,
            String? studenId,
            String? mobile,
            String? installMentId)?
        getPaymentCompleteResponse,
    TResult? Function()? disposeEvent,
    TResult? Function(String studentId, ReceiptType receiptType)? getFeeReceipt,
    TResult? Function(String docName)? getFeeReceiptByDocName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentStatusType paymentStatusType, String userId,
            String? trackId)?
        getPaymentDashboard,
    TResult Function(String id)? selectPaymentsCheckboxEvent,
    TResult Function(int? index)? selectedItemIndex,
    TResult Function(
            String totalAmount, String installmentId, String studentId)?
        getPaymentFinalAmount,
    TResult Function(String email, String student, String mobile, String remark,
            String installmentId, String studentId)?
        getPaymentOrderId,
    TResult Function(String email, String student, String mobile, String remark,
            String installmentId, String studentId, String orderId)?
        getPaymentTokenAndOpenPayment,
    TResult Function(
            String? orderId,
            String? userName,
            String? email,
            String? remark,
            String? studenId,
            String? mobile,
            String? installMentId)?
        getPaymentCompleteResponse,
    TResult Function()? disposeEvent,
    TResult Function(String studentId, ReceiptType receiptType)? getFeeReceipt,
    TResult Function(String docName)? getFeeReceiptByDocName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPaymentDashboard value) getPaymentDashboard,
    required TResult Function(_SelectPaymentsCheckboxEvent value)
        selectPaymentsCheckboxEvent,
    required TResult Function(_SelectedItemIndex value) selectedItemIndex,
    required TResult Function(_GetPaymentFinalAmount value)
        getPaymentFinalAmount,
    required TResult Function(_GetPaymentOrderId value) getPaymentOrderId,
    required TResult Function(_GetPaymentTokenAndOpenPayment value)
        getPaymentTokenAndOpenPayment,
    required TResult Function(_GetPaymentCompleteResponse value)
        getPaymentCompleteResponse,
    required TResult Function(_PaymentDisposeEvent value) disposeEvent,
    required TResult Function(_GetFeeReceipt value) getFeeReceipt,
    required TResult Function(_GetFeeReceiptByDocName value)
        getFeeReceiptByDocName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPaymentDashboard value)? getPaymentDashboard,
    TResult? Function(_SelectPaymentsCheckboxEvent value)?
        selectPaymentsCheckboxEvent,
    TResult? Function(_SelectedItemIndex value)? selectedItemIndex,
    TResult? Function(_GetPaymentFinalAmount value)? getPaymentFinalAmount,
    TResult? Function(_GetPaymentOrderId value)? getPaymentOrderId,
    TResult? Function(_GetPaymentTokenAndOpenPayment value)?
        getPaymentTokenAndOpenPayment,
    TResult? Function(_GetPaymentCompleteResponse value)?
        getPaymentCompleteResponse,
    TResult? Function(_PaymentDisposeEvent value)? disposeEvent,
    TResult? Function(_GetFeeReceipt value)? getFeeReceipt,
    TResult? Function(_GetFeeReceiptByDocName value)? getFeeReceiptByDocName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPaymentDashboard value)? getPaymentDashboard,
    TResult Function(_SelectPaymentsCheckboxEvent value)?
        selectPaymentsCheckboxEvent,
    TResult Function(_SelectedItemIndex value)? selectedItemIndex,
    TResult Function(_GetPaymentFinalAmount value)? getPaymentFinalAmount,
    TResult Function(_GetPaymentOrderId value)? getPaymentOrderId,
    TResult Function(_GetPaymentTokenAndOpenPayment value)?
        getPaymentTokenAndOpenPayment,
    TResult Function(_GetPaymentCompleteResponse value)?
        getPaymentCompleteResponse,
    TResult Function(_PaymentDisposeEvent value)? disposeEvent,
    TResult Function(_GetFeeReceipt value)? getFeeReceipt,
    TResult Function(_GetFeeReceiptByDocName value)? getFeeReceiptByDocName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentEventCopyWith<$Res> {
  factory $PaymentEventCopyWith(
          PaymentEvent value, $Res Function(PaymentEvent) then) =
      _$PaymentEventCopyWithImpl<$Res, PaymentEvent>;
}

/// @nodoc
class _$PaymentEventCopyWithImpl<$Res, $Val extends PaymentEvent>
    implements $PaymentEventCopyWith<$Res> {
  _$PaymentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetPaymentDashboardImplCopyWith<$Res> {
  factory _$$GetPaymentDashboardImplCopyWith(_$GetPaymentDashboardImpl value,
          $Res Function(_$GetPaymentDashboardImpl) then) =
      __$$GetPaymentDashboardImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {PaymentStatusType paymentStatusType, String userId, String? trackId});
}

/// @nodoc
class __$$GetPaymentDashboardImplCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$GetPaymentDashboardImpl>
    implements _$$GetPaymentDashboardImplCopyWith<$Res> {
  __$$GetPaymentDashboardImplCopyWithImpl(_$GetPaymentDashboardImpl _value,
      $Res Function(_$GetPaymentDashboardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentStatusType = null,
    Object? userId = null,
    Object? trackId = freezed,
  }) {
    return _then(_$GetPaymentDashboardImpl(
      paymentStatusType: null == paymentStatusType
          ? _value.paymentStatusType
          : paymentStatusType // ignore: cast_nullable_to_non_nullable
              as PaymentStatusType,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      trackId: freezed == trackId
          ? _value.trackId
          : trackId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GetPaymentDashboardImpl implements _GetPaymentDashboard {
  const _$GetPaymentDashboardImpl(
      {required this.paymentStatusType, required this.userId, this.trackId});

  @override
  final PaymentStatusType paymentStatusType;
  @override
  final String userId;
  @override
  final String? trackId;

  @override
  String toString() {
    return 'PaymentEvent.getPaymentDashboard(paymentStatusType: $paymentStatusType, userId: $userId, trackId: $trackId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPaymentDashboardImpl &&
            (identical(other.paymentStatusType, paymentStatusType) ||
                other.paymentStatusType == paymentStatusType) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.trackId, trackId) || other.trackId == trackId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, paymentStatusType, userId, trackId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPaymentDashboardImplCopyWith<_$GetPaymentDashboardImpl> get copyWith =>
      __$$GetPaymentDashboardImplCopyWithImpl<_$GetPaymentDashboardImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            PaymentStatusType paymentStatusType, String userId, String? trackId)
        getPaymentDashboard,
    required TResult Function(String id) selectPaymentsCheckboxEvent,
    required TResult Function(int? index) selectedItemIndex,
    required TResult Function(
            String totalAmount, String installmentId, String studentId)
        getPaymentFinalAmount,
    required TResult Function(String email, String student, String mobile,
            String remark, String installmentId, String studentId)
        getPaymentOrderId,
    required TResult Function(
            String email,
            String student,
            String mobile,
            String remark,
            String installmentId,
            String studentId,
            String orderId)
        getPaymentTokenAndOpenPayment,
    required TResult Function(
            String? orderId,
            String? userName,
            String? email,
            String? remark,
            String? studenId,
            String? mobile,
            String? installMentId)
        getPaymentCompleteResponse,
    required TResult Function() disposeEvent,
    required TResult Function(String studentId, ReceiptType receiptType)
        getFeeReceipt,
    required TResult Function(String docName) getFeeReceiptByDocName,
  }) {
    return getPaymentDashboard(paymentStatusType, userId, trackId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentStatusType paymentStatusType, String userId,
            String? trackId)?
        getPaymentDashboard,
    TResult? Function(String id)? selectPaymentsCheckboxEvent,
    TResult? Function(int? index)? selectedItemIndex,
    TResult? Function(
            String totalAmount, String installmentId, String studentId)?
        getPaymentFinalAmount,
    TResult? Function(String email, String student, String mobile,
            String remark, String installmentId, String studentId)?
        getPaymentOrderId,
    TResult? Function(
            String email,
            String student,
            String mobile,
            String remark,
            String installmentId,
            String studentId,
            String orderId)?
        getPaymentTokenAndOpenPayment,
    TResult? Function(
            String? orderId,
            String? userName,
            String? email,
            String? remark,
            String? studenId,
            String? mobile,
            String? installMentId)?
        getPaymentCompleteResponse,
    TResult? Function()? disposeEvent,
    TResult? Function(String studentId, ReceiptType receiptType)? getFeeReceipt,
    TResult? Function(String docName)? getFeeReceiptByDocName,
  }) {
    return getPaymentDashboard?.call(paymentStatusType, userId, trackId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentStatusType paymentStatusType, String userId,
            String? trackId)?
        getPaymentDashboard,
    TResult Function(String id)? selectPaymentsCheckboxEvent,
    TResult Function(int? index)? selectedItemIndex,
    TResult Function(
            String totalAmount, String installmentId, String studentId)?
        getPaymentFinalAmount,
    TResult Function(String email, String student, String mobile, String remark,
            String installmentId, String studentId)?
        getPaymentOrderId,
    TResult Function(String email, String student, String mobile, String remark,
            String installmentId, String studentId, String orderId)?
        getPaymentTokenAndOpenPayment,
    TResult Function(
            String? orderId,
            String? userName,
            String? email,
            String? remark,
            String? studenId,
            String? mobile,
            String? installMentId)?
        getPaymentCompleteResponse,
    TResult Function()? disposeEvent,
    TResult Function(String studentId, ReceiptType receiptType)? getFeeReceipt,
    TResult Function(String docName)? getFeeReceiptByDocName,
    required TResult orElse(),
  }) {
    if (getPaymentDashboard != null) {
      return getPaymentDashboard(paymentStatusType, userId, trackId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPaymentDashboard value) getPaymentDashboard,
    required TResult Function(_SelectPaymentsCheckboxEvent value)
        selectPaymentsCheckboxEvent,
    required TResult Function(_SelectedItemIndex value) selectedItemIndex,
    required TResult Function(_GetPaymentFinalAmount value)
        getPaymentFinalAmount,
    required TResult Function(_GetPaymentOrderId value) getPaymentOrderId,
    required TResult Function(_GetPaymentTokenAndOpenPayment value)
        getPaymentTokenAndOpenPayment,
    required TResult Function(_GetPaymentCompleteResponse value)
        getPaymentCompleteResponse,
    required TResult Function(_PaymentDisposeEvent value) disposeEvent,
    required TResult Function(_GetFeeReceipt value) getFeeReceipt,
    required TResult Function(_GetFeeReceiptByDocName value)
        getFeeReceiptByDocName,
  }) {
    return getPaymentDashboard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPaymentDashboard value)? getPaymentDashboard,
    TResult? Function(_SelectPaymentsCheckboxEvent value)?
        selectPaymentsCheckboxEvent,
    TResult? Function(_SelectedItemIndex value)? selectedItemIndex,
    TResult? Function(_GetPaymentFinalAmount value)? getPaymentFinalAmount,
    TResult? Function(_GetPaymentOrderId value)? getPaymentOrderId,
    TResult? Function(_GetPaymentTokenAndOpenPayment value)?
        getPaymentTokenAndOpenPayment,
    TResult? Function(_GetPaymentCompleteResponse value)?
        getPaymentCompleteResponse,
    TResult? Function(_PaymentDisposeEvent value)? disposeEvent,
    TResult? Function(_GetFeeReceipt value)? getFeeReceipt,
    TResult? Function(_GetFeeReceiptByDocName value)? getFeeReceiptByDocName,
  }) {
    return getPaymentDashboard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPaymentDashboard value)? getPaymentDashboard,
    TResult Function(_SelectPaymentsCheckboxEvent value)?
        selectPaymentsCheckboxEvent,
    TResult Function(_SelectedItemIndex value)? selectedItemIndex,
    TResult Function(_GetPaymentFinalAmount value)? getPaymentFinalAmount,
    TResult Function(_GetPaymentOrderId value)? getPaymentOrderId,
    TResult Function(_GetPaymentTokenAndOpenPayment value)?
        getPaymentTokenAndOpenPayment,
    TResult Function(_GetPaymentCompleteResponse value)?
        getPaymentCompleteResponse,
    TResult Function(_PaymentDisposeEvent value)? disposeEvent,
    TResult Function(_GetFeeReceipt value)? getFeeReceipt,
    TResult Function(_GetFeeReceiptByDocName value)? getFeeReceiptByDocName,
    required TResult orElse(),
  }) {
    if (getPaymentDashboard != null) {
      return getPaymentDashboard(this);
    }
    return orElse();
  }
}

abstract class _GetPaymentDashboard implements PaymentEvent {
  const factory _GetPaymentDashboard(
      {required final PaymentStatusType paymentStatusType,
      required final String userId,
      final String? trackId}) = _$GetPaymentDashboardImpl;

  PaymentStatusType get paymentStatusType;
  String get userId;
  String? get trackId;
  @JsonKey(ignore: true)
  _$$GetPaymentDashboardImplCopyWith<_$GetPaymentDashboardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectPaymentsCheckboxEventImplCopyWith<$Res> {
  factory _$$SelectPaymentsCheckboxEventImplCopyWith(
          _$SelectPaymentsCheckboxEventImpl value,
          $Res Function(_$SelectPaymentsCheckboxEventImpl) then) =
      __$$SelectPaymentsCheckboxEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$SelectPaymentsCheckboxEventImplCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$SelectPaymentsCheckboxEventImpl>
    implements _$$SelectPaymentsCheckboxEventImplCopyWith<$Res> {
  __$$SelectPaymentsCheckboxEventImplCopyWithImpl(
      _$SelectPaymentsCheckboxEventImpl _value,
      $Res Function(_$SelectPaymentsCheckboxEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$SelectPaymentsCheckboxEventImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SelectPaymentsCheckboxEventImpl
    implements _SelectPaymentsCheckboxEvent {
  const _$SelectPaymentsCheckboxEventImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'PaymentEvent.selectPaymentsCheckboxEvent(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectPaymentsCheckboxEventImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectPaymentsCheckboxEventImplCopyWith<_$SelectPaymentsCheckboxEventImpl>
      get copyWith => __$$SelectPaymentsCheckboxEventImplCopyWithImpl<
          _$SelectPaymentsCheckboxEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            PaymentStatusType paymentStatusType, String userId, String? trackId)
        getPaymentDashboard,
    required TResult Function(String id) selectPaymentsCheckboxEvent,
    required TResult Function(int? index) selectedItemIndex,
    required TResult Function(
            String totalAmount, String installmentId, String studentId)
        getPaymentFinalAmount,
    required TResult Function(String email, String student, String mobile,
            String remark, String installmentId, String studentId)
        getPaymentOrderId,
    required TResult Function(
            String email,
            String student,
            String mobile,
            String remark,
            String installmentId,
            String studentId,
            String orderId)
        getPaymentTokenAndOpenPayment,
    required TResult Function(
            String? orderId,
            String? userName,
            String? email,
            String? remark,
            String? studenId,
            String? mobile,
            String? installMentId)
        getPaymentCompleteResponse,
    required TResult Function() disposeEvent,
    required TResult Function(String studentId, ReceiptType receiptType)
        getFeeReceipt,
    required TResult Function(String docName) getFeeReceiptByDocName,
  }) {
    return selectPaymentsCheckboxEvent(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentStatusType paymentStatusType, String userId,
            String? trackId)?
        getPaymentDashboard,
    TResult? Function(String id)? selectPaymentsCheckboxEvent,
    TResult? Function(int? index)? selectedItemIndex,
    TResult? Function(
            String totalAmount, String installmentId, String studentId)?
        getPaymentFinalAmount,
    TResult? Function(String email, String student, String mobile,
            String remark, String installmentId, String studentId)?
        getPaymentOrderId,
    TResult? Function(
            String email,
            String student,
            String mobile,
            String remark,
            String installmentId,
            String studentId,
            String orderId)?
        getPaymentTokenAndOpenPayment,
    TResult? Function(
            String? orderId,
            String? userName,
            String? email,
            String? remark,
            String? studenId,
            String? mobile,
            String? installMentId)?
        getPaymentCompleteResponse,
    TResult? Function()? disposeEvent,
    TResult? Function(String studentId, ReceiptType receiptType)? getFeeReceipt,
    TResult? Function(String docName)? getFeeReceiptByDocName,
  }) {
    return selectPaymentsCheckboxEvent?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentStatusType paymentStatusType, String userId,
            String? trackId)?
        getPaymentDashboard,
    TResult Function(String id)? selectPaymentsCheckboxEvent,
    TResult Function(int? index)? selectedItemIndex,
    TResult Function(
            String totalAmount, String installmentId, String studentId)?
        getPaymentFinalAmount,
    TResult Function(String email, String student, String mobile, String remark,
            String installmentId, String studentId)?
        getPaymentOrderId,
    TResult Function(String email, String student, String mobile, String remark,
            String installmentId, String studentId, String orderId)?
        getPaymentTokenAndOpenPayment,
    TResult Function(
            String? orderId,
            String? userName,
            String? email,
            String? remark,
            String? studenId,
            String? mobile,
            String? installMentId)?
        getPaymentCompleteResponse,
    TResult Function()? disposeEvent,
    TResult Function(String studentId, ReceiptType receiptType)? getFeeReceipt,
    TResult Function(String docName)? getFeeReceiptByDocName,
    required TResult orElse(),
  }) {
    if (selectPaymentsCheckboxEvent != null) {
      return selectPaymentsCheckboxEvent(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPaymentDashboard value) getPaymentDashboard,
    required TResult Function(_SelectPaymentsCheckboxEvent value)
        selectPaymentsCheckboxEvent,
    required TResult Function(_SelectedItemIndex value) selectedItemIndex,
    required TResult Function(_GetPaymentFinalAmount value)
        getPaymentFinalAmount,
    required TResult Function(_GetPaymentOrderId value) getPaymentOrderId,
    required TResult Function(_GetPaymentTokenAndOpenPayment value)
        getPaymentTokenAndOpenPayment,
    required TResult Function(_GetPaymentCompleteResponse value)
        getPaymentCompleteResponse,
    required TResult Function(_PaymentDisposeEvent value) disposeEvent,
    required TResult Function(_GetFeeReceipt value) getFeeReceipt,
    required TResult Function(_GetFeeReceiptByDocName value)
        getFeeReceiptByDocName,
  }) {
    return selectPaymentsCheckboxEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPaymentDashboard value)? getPaymentDashboard,
    TResult? Function(_SelectPaymentsCheckboxEvent value)?
        selectPaymentsCheckboxEvent,
    TResult? Function(_SelectedItemIndex value)? selectedItemIndex,
    TResult? Function(_GetPaymentFinalAmount value)? getPaymentFinalAmount,
    TResult? Function(_GetPaymentOrderId value)? getPaymentOrderId,
    TResult? Function(_GetPaymentTokenAndOpenPayment value)?
        getPaymentTokenAndOpenPayment,
    TResult? Function(_GetPaymentCompleteResponse value)?
        getPaymentCompleteResponse,
    TResult? Function(_PaymentDisposeEvent value)? disposeEvent,
    TResult? Function(_GetFeeReceipt value)? getFeeReceipt,
    TResult? Function(_GetFeeReceiptByDocName value)? getFeeReceiptByDocName,
  }) {
    return selectPaymentsCheckboxEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPaymentDashboard value)? getPaymentDashboard,
    TResult Function(_SelectPaymentsCheckboxEvent value)?
        selectPaymentsCheckboxEvent,
    TResult Function(_SelectedItemIndex value)? selectedItemIndex,
    TResult Function(_GetPaymentFinalAmount value)? getPaymentFinalAmount,
    TResult Function(_GetPaymentOrderId value)? getPaymentOrderId,
    TResult Function(_GetPaymentTokenAndOpenPayment value)?
        getPaymentTokenAndOpenPayment,
    TResult Function(_GetPaymentCompleteResponse value)?
        getPaymentCompleteResponse,
    TResult Function(_PaymentDisposeEvent value)? disposeEvent,
    TResult Function(_GetFeeReceipt value)? getFeeReceipt,
    TResult Function(_GetFeeReceiptByDocName value)? getFeeReceiptByDocName,
    required TResult orElse(),
  }) {
    if (selectPaymentsCheckboxEvent != null) {
      return selectPaymentsCheckboxEvent(this);
    }
    return orElse();
  }
}

abstract class _SelectPaymentsCheckboxEvent implements PaymentEvent {
  const factory _SelectPaymentsCheckboxEvent(final String id) =
      _$SelectPaymentsCheckboxEventImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$SelectPaymentsCheckboxEventImplCopyWith<_$SelectPaymentsCheckboxEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectedItemIndexImplCopyWith<$Res> {
  factory _$$SelectedItemIndexImplCopyWith(_$SelectedItemIndexImpl value,
          $Res Function(_$SelectedItemIndexImpl) then) =
      __$$SelectedItemIndexImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? index});
}

/// @nodoc
class __$$SelectedItemIndexImplCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$SelectedItemIndexImpl>
    implements _$$SelectedItemIndexImplCopyWith<$Res> {
  __$$SelectedItemIndexImplCopyWithImpl(_$SelectedItemIndexImpl _value,
      $Res Function(_$SelectedItemIndexImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_$SelectedItemIndexImpl(
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$SelectedItemIndexImpl implements _SelectedItemIndex {
  const _$SelectedItemIndexImpl({required this.index});

  @override
  final int? index;

  @override
  String toString() {
    return 'PaymentEvent.selectedItemIndex(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedItemIndexImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedItemIndexImplCopyWith<_$SelectedItemIndexImpl> get copyWith =>
      __$$SelectedItemIndexImplCopyWithImpl<_$SelectedItemIndexImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            PaymentStatusType paymentStatusType, String userId, String? trackId)
        getPaymentDashboard,
    required TResult Function(String id) selectPaymentsCheckboxEvent,
    required TResult Function(int? index) selectedItemIndex,
    required TResult Function(
            String totalAmount, String installmentId, String studentId)
        getPaymentFinalAmount,
    required TResult Function(String email, String student, String mobile,
            String remark, String installmentId, String studentId)
        getPaymentOrderId,
    required TResult Function(
            String email,
            String student,
            String mobile,
            String remark,
            String installmentId,
            String studentId,
            String orderId)
        getPaymentTokenAndOpenPayment,
    required TResult Function(
            String? orderId,
            String? userName,
            String? email,
            String? remark,
            String? studenId,
            String? mobile,
            String? installMentId)
        getPaymentCompleteResponse,
    required TResult Function() disposeEvent,
    required TResult Function(String studentId, ReceiptType receiptType)
        getFeeReceipt,
    required TResult Function(String docName) getFeeReceiptByDocName,
  }) {
    return selectedItemIndex(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentStatusType paymentStatusType, String userId,
            String? trackId)?
        getPaymentDashboard,
    TResult? Function(String id)? selectPaymentsCheckboxEvent,
    TResult? Function(int? index)? selectedItemIndex,
    TResult? Function(
            String totalAmount, String installmentId, String studentId)?
        getPaymentFinalAmount,
    TResult? Function(String email, String student, String mobile,
            String remark, String installmentId, String studentId)?
        getPaymentOrderId,
    TResult? Function(
            String email,
            String student,
            String mobile,
            String remark,
            String installmentId,
            String studentId,
            String orderId)?
        getPaymentTokenAndOpenPayment,
    TResult? Function(
            String? orderId,
            String? userName,
            String? email,
            String? remark,
            String? studenId,
            String? mobile,
            String? installMentId)?
        getPaymentCompleteResponse,
    TResult? Function()? disposeEvent,
    TResult? Function(String studentId, ReceiptType receiptType)? getFeeReceipt,
    TResult? Function(String docName)? getFeeReceiptByDocName,
  }) {
    return selectedItemIndex?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentStatusType paymentStatusType, String userId,
            String? trackId)?
        getPaymentDashboard,
    TResult Function(String id)? selectPaymentsCheckboxEvent,
    TResult Function(int? index)? selectedItemIndex,
    TResult Function(
            String totalAmount, String installmentId, String studentId)?
        getPaymentFinalAmount,
    TResult Function(String email, String student, String mobile, String remark,
            String installmentId, String studentId)?
        getPaymentOrderId,
    TResult Function(String email, String student, String mobile, String remark,
            String installmentId, String studentId, String orderId)?
        getPaymentTokenAndOpenPayment,
    TResult Function(
            String? orderId,
            String? userName,
            String? email,
            String? remark,
            String? studenId,
            String? mobile,
            String? installMentId)?
        getPaymentCompleteResponse,
    TResult Function()? disposeEvent,
    TResult Function(String studentId, ReceiptType receiptType)? getFeeReceipt,
    TResult Function(String docName)? getFeeReceiptByDocName,
    required TResult orElse(),
  }) {
    if (selectedItemIndex != null) {
      return selectedItemIndex(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPaymentDashboard value) getPaymentDashboard,
    required TResult Function(_SelectPaymentsCheckboxEvent value)
        selectPaymentsCheckboxEvent,
    required TResult Function(_SelectedItemIndex value) selectedItemIndex,
    required TResult Function(_GetPaymentFinalAmount value)
        getPaymentFinalAmount,
    required TResult Function(_GetPaymentOrderId value) getPaymentOrderId,
    required TResult Function(_GetPaymentTokenAndOpenPayment value)
        getPaymentTokenAndOpenPayment,
    required TResult Function(_GetPaymentCompleteResponse value)
        getPaymentCompleteResponse,
    required TResult Function(_PaymentDisposeEvent value) disposeEvent,
    required TResult Function(_GetFeeReceipt value) getFeeReceipt,
    required TResult Function(_GetFeeReceiptByDocName value)
        getFeeReceiptByDocName,
  }) {
    return selectedItemIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPaymentDashboard value)? getPaymentDashboard,
    TResult? Function(_SelectPaymentsCheckboxEvent value)?
        selectPaymentsCheckboxEvent,
    TResult? Function(_SelectedItemIndex value)? selectedItemIndex,
    TResult? Function(_GetPaymentFinalAmount value)? getPaymentFinalAmount,
    TResult? Function(_GetPaymentOrderId value)? getPaymentOrderId,
    TResult? Function(_GetPaymentTokenAndOpenPayment value)?
        getPaymentTokenAndOpenPayment,
    TResult? Function(_GetPaymentCompleteResponse value)?
        getPaymentCompleteResponse,
    TResult? Function(_PaymentDisposeEvent value)? disposeEvent,
    TResult? Function(_GetFeeReceipt value)? getFeeReceipt,
    TResult? Function(_GetFeeReceiptByDocName value)? getFeeReceiptByDocName,
  }) {
    return selectedItemIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPaymentDashboard value)? getPaymentDashboard,
    TResult Function(_SelectPaymentsCheckboxEvent value)?
        selectPaymentsCheckboxEvent,
    TResult Function(_SelectedItemIndex value)? selectedItemIndex,
    TResult Function(_GetPaymentFinalAmount value)? getPaymentFinalAmount,
    TResult Function(_GetPaymentOrderId value)? getPaymentOrderId,
    TResult Function(_GetPaymentTokenAndOpenPayment value)?
        getPaymentTokenAndOpenPayment,
    TResult Function(_GetPaymentCompleteResponse value)?
        getPaymentCompleteResponse,
    TResult Function(_PaymentDisposeEvent value)? disposeEvent,
    TResult Function(_GetFeeReceipt value)? getFeeReceipt,
    TResult Function(_GetFeeReceiptByDocName value)? getFeeReceiptByDocName,
    required TResult orElse(),
  }) {
    if (selectedItemIndex != null) {
      return selectedItemIndex(this);
    }
    return orElse();
  }
}

abstract class _SelectedItemIndex implements PaymentEvent {
  const factory _SelectedItemIndex({required final int? index}) =
      _$SelectedItemIndexImpl;

  int? get index;
  @JsonKey(ignore: true)
  _$$SelectedItemIndexImplCopyWith<_$SelectedItemIndexImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetPaymentFinalAmountImplCopyWith<$Res> {
  factory _$$GetPaymentFinalAmountImplCopyWith(
          _$GetPaymentFinalAmountImpl value,
          $Res Function(_$GetPaymentFinalAmountImpl) then) =
      __$$GetPaymentFinalAmountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String totalAmount, String installmentId, String studentId});
}

/// @nodoc
class __$$GetPaymentFinalAmountImplCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$GetPaymentFinalAmountImpl>
    implements _$$GetPaymentFinalAmountImplCopyWith<$Res> {
  __$$GetPaymentFinalAmountImplCopyWithImpl(_$GetPaymentFinalAmountImpl _value,
      $Res Function(_$GetPaymentFinalAmountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalAmount = null,
    Object? installmentId = null,
    Object? studentId = null,
  }) {
    return _then(_$GetPaymentFinalAmountImpl(
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as String,
      installmentId: null == installmentId
          ? _value.installmentId
          : installmentId // ignore: cast_nullable_to_non_nullable
              as String,
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetPaymentFinalAmountImpl implements _GetPaymentFinalAmount {
  const _$GetPaymentFinalAmountImpl(
      {required this.totalAmount,
      required this.installmentId,
      required this.studentId});

  @override
  final String totalAmount;
  @override
  final String installmentId;
  @override
  final String studentId;

  @override
  String toString() {
    return 'PaymentEvent.getPaymentFinalAmount(totalAmount: $totalAmount, installmentId: $installmentId, studentId: $studentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPaymentFinalAmountImpl &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.installmentId, installmentId) ||
                other.installmentId == installmentId) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, totalAmount, installmentId, studentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPaymentFinalAmountImplCopyWith<_$GetPaymentFinalAmountImpl>
      get copyWith => __$$GetPaymentFinalAmountImplCopyWithImpl<
          _$GetPaymentFinalAmountImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            PaymentStatusType paymentStatusType, String userId, String? trackId)
        getPaymentDashboard,
    required TResult Function(String id) selectPaymentsCheckboxEvent,
    required TResult Function(int? index) selectedItemIndex,
    required TResult Function(
            String totalAmount, String installmentId, String studentId)
        getPaymentFinalAmount,
    required TResult Function(String email, String student, String mobile,
            String remark, String installmentId, String studentId)
        getPaymentOrderId,
    required TResult Function(
            String email,
            String student,
            String mobile,
            String remark,
            String installmentId,
            String studentId,
            String orderId)
        getPaymentTokenAndOpenPayment,
    required TResult Function(
            String? orderId,
            String? userName,
            String? email,
            String? remark,
            String? studenId,
            String? mobile,
            String? installMentId)
        getPaymentCompleteResponse,
    required TResult Function() disposeEvent,
    required TResult Function(String studentId, ReceiptType receiptType)
        getFeeReceipt,
    required TResult Function(String docName) getFeeReceiptByDocName,
  }) {
    return getPaymentFinalAmount(totalAmount, installmentId, studentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentStatusType paymentStatusType, String userId,
            String? trackId)?
        getPaymentDashboard,
    TResult? Function(String id)? selectPaymentsCheckboxEvent,
    TResult? Function(int? index)? selectedItemIndex,
    TResult? Function(
            String totalAmount, String installmentId, String studentId)?
        getPaymentFinalAmount,
    TResult? Function(String email, String student, String mobile,
            String remark, String installmentId, String studentId)?
        getPaymentOrderId,
    TResult? Function(
            String email,
            String student,
            String mobile,
            String remark,
            String installmentId,
            String studentId,
            String orderId)?
        getPaymentTokenAndOpenPayment,
    TResult? Function(
            String? orderId,
            String? userName,
            String? email,
            String? remark,
            String? studenId,
            String? mobile,
            String? installMentId)?
        getPaymentCompleteResponse,
    TResult? Function()? disposeEvent,
    TResult? Function(String studentId, ReceiptType receiptType)? getFeeReceipt,
    TResult? Function(String docName)? getFeeReceiptByDocName,
  }) {
    return getPaymentFinalAmount?.call(totalAmount, installmentId, studentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentStatusType paymentStatusType, String userId,
            String? trackId)?
        getPaymentDashboard,
    TResult Function(String id)? selectPaymentsCheckboxEvent,
    TResult Function(int? index)? selectedItemIndex,
    TResult Function(
            String totalAmount, String installmentId, String studentId)?
        getPaymentFinalAmount,
    TResult Function(String email, String student, String mobile, String remark,
            String installmentId, String studentId)?
        getPaymentOrderId,
    TResult Function(String email, String student, String mobile, String remark,
            String installmentId, String studentId, String orderId)?
        getPaymentTokenAndOpenPayment,
    TResult Function(
            String? orderId,
            String? userName,
            String? email,
            String? remark,
            String? studenId,
            String? mobile,
            String? installMentId)?
        getPaymentCompleteResponse,
    TResult Function()? disposeEvent,
    TResult Function(String studentId, ReceiptType receiptType)? getFeeReceipt,
    TResult Function(String docName)? getFeeReceiptByDocName,
    required TResult orElse(),
  }) {
    if (getPaymentFinalAmount != null) {
      return getPaymentFinalAmount(totalAmount, installmentId, studentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPaymentDashboard value) getPaymentDashboard,
    required TResult Function(_SelectPaymentsCheckboxEvent value)
        selectPaymentsCheckboxEvent,
    required TResult Function(_SelectedItemIndex value) selectedItemIndex,
    required TResult Function(_GetPaymentFinalAmount value)
        getPaymentFinalAmount,
    required TResult Function(_GetPaymentOrderId value) getPaymentOrderId,
    required TResult Function(_GetPaymentTokenAndOpenPayment value)
        getPaymentTokenAndOpenPayment,
    required TResult Function(_GetPaymentCompleteResponse value)
        getPaymentCompleteResponse,
    required TResult Function(_PaymentDisposeEvent value) disposeEvent,
    required TResult Function(_GetFeeReceipt value) getFeeReceipt,
    required TResult Function(_GetFeeReceiptByDocName value)
        getFeeReceiptByDocName,
  }) {
    return getPaymentFinalAmount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPaymentDashboard value)? getPaymentDashboard,
    TResult? Function(_SelectPaymentsCheckboxEvent value)?
        selectPaymentsCheckboxEvent,
    TResult? Function(_SelectedItemIndex value)? selectedItemIndex,
    TResult? Function(_GetPaymentFinalAmount value)? getPaymentFinalAmount,
    TResult? Function(_GetPaymentOrderId value)? getPaymentOrderId,
    TResult? Function(_GetPaymentTokenAndOpenPayment value)?
        getPaymentTokenAndOpenPayment,
    TResult? Function(_GetPaymentCompleteResponse value)?
        getPaymentCompleteResponse,
    TResult? Function(_PaymentDisposeEvent value)? disposeEvent,
    TResult? Function(_GetFeeReceipt value)? getFeeReceipt,
    TResult? Function(_GetFeeReceiptByDocName value)? getFeeReceiptByDocName,
  }) {
    return getPaymentFinalAmount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPaymentDashboard value)? getPaymentDashboard,
    TResult Function(_SelectPaymentsCheckboxEvent value)?
        selectPaymentsCheckboxEvent,
    TResult Function(_SelectedItemIndex value)? selectedItemIndex,
    TResult Function(_GetPaymentFinalAmount value)? getPaymentFinalAmount,
    TResult Function(_GetPaymentOrderId value)? getPaymentOrderId,
    TResult Function(_GetPaymentTokenAndOpenPayment value)?
        getPaymentTokenAndOpenPayment,
    TResult Function(_GetPaymentCompleteResponse value)?
        getPaymentCompleteResponse,
    TResult Function(_PaymentDisposeEvent value)? disposeEvent,
    TResult Function(_GetFeeReceipt value)? getFeeReceipt,
    TResult Function(_GetFeeReceiptByDocName value)? getFeeReceiptByDocName,
    required TResult orElse(),
  }) {
    if (getPaymentFinalAmount != null) {
      return getPaymentFinalAmount(this);
    }
    return orElse();
  }
}

abstract class _GetPaymentFinalAmount implements PaymentEvent {
  const factory _GetPaymentFinalAmount(
      {required final String totalAmount,
      required final String installmentId,
      required final String studentId}) = _$GetPaymentFinalAmountImpl;

  String get totalAmount;
  String get installmentId;
  String get studentId;
  @JsonKey(ignore: true)
  _$$GetPaymentFinalAmountImplCopyWith<_$GetPaymentFinalAmountImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetPaymentOrderIdImplCopyWith<$Res> {
  factory _$$GetPaymentOrderIdImplCopyWith(_$GetPaymentOrderIdImpl value,
          $Res Function(_$GetPaymentOrderIdImpl) then) =
      __$$GetPaymentOrderIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String email,
      String student,
      String mobile,
      String remark,
      String installmentId,
      String studentId});
}

/// @nodoc
class __$$GetPaymentOrderIdImplCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$GetPaymentOrderIdImpl>
    implements _$$GetPaymentOrderIdImplCopyWith<$Res> {
  __$$GetPaymentOrderIdImplCopyWithImpl(_$GetPaymentOrderIdImpl _value,
      $Res Function(_$GetPaymentOrderIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? student = null,
    Object? mobile = null,
    Object? remark = null,
    Object? installmentId = null,
    Object? studentId = null,
  }) {
    return _then(_$GetPaymentOrderIdImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      student: null == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      installmentId: null == installmentId
          ? _value.installmentId
          : installmentId // ignore: cast_nullable_to_non_nullable
              as String,
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetPaymentOrderIdImpl implements _GetPaymentOrderId {
  const _$GetPaymentOrderIdImpl(
      {required this.email,
      required this.student,
      required this.mobile,
      required this.remark,
      required this.installmentId,
      required this.studentId});

  @override
  final String email;
  @override
  final String student;
  @override
  final String mobile;
  @override
  final String remark;
  @override
  final String installmentId;
  @override
  final String studentId;

  @override
  String toString() {
    return 'PaymentEvent.getPaymentOrderId(email: $email, student: $student, mobile: $mobile, remark: $remark, installmentId: $installmentId, studentId: $studentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPaymentOrderIdImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.student, student) || other.student == student) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.installmentId, installmentId) ||
                other.installmentId == installmentId) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, email, student, mobile, remark, installmentId, studentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPaymentOrderIdImplCopyWith<_$GetPaymentOrderIdImpl> get copyWith =>
      __$$GetPaymentOrderIdImplCopyWithImpl<_$GetPaymentOrderIdImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            PaymentStatusType paymentStatusType, String userId, String? trackId)
        getPaymentDashboard,
    required TResult Function(String id) selectPaymentsCheckboxEvent,
    required TResult Function(int? index) selectedItemIndex,
    required TResult Function(
            String totalAmount, String installmentId, String studentId)
        getPaymentFinalAmount,
    required TResult Function(String email, String student, String mobile,
            String remark, String installmentId, String studentId)
        getPaymentOrderId,
    required TResult Function(
            String email,
            String student,
            String mobile,
            String remark,
            String installmentId,
            String studentId,
            String orderId)
        getPaymentTokenAndOpenPayment,
    required TResult Function(
            String? orderId,
            String? userName,
            String? email,
            String? remark,
            String? studenId,
            String? mobile,
            String? installMentId)
        getPaymentCompleteResponse,
    required TResult Function() disposeEvent,
    required TResult Function(String studentId, ReceiptType receiptType)
        getFeeReceipt,
    required TResult Function(String docName) getFeeReceiptByDocName,
  }) {
    return getPaymentOrderId(
        email, student, mobile, remark, installmentId, studentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentStatusType paymentStatusType, String userId,
            String? trackId)?
        getPaymentDashboard,
    TResult? Function(String id)? selectPaymentsCheckboxEvent,
    TResult? Function(int? index)? selectedItemIndex,
    TResult? Function(
            String totalAmount, String installmentId, String studentId)?
        getPaymentFinalAmount,
    TResult? Function(String email, String student, String mobile,
            String remark, String installmentId, String studentId)?
        getPaymentOrderId,
    TResult? Function(
            String email,
            String student,
            String mobile,
            String remark,
            String installmentId,
            String studentId,
            String orderId)?
        getPaymentTokenAndOpenPayment,
    TResult? Function(
            String? orderId,
            String? userName,
            String? email,
            String? remark,
            String? studenId,
            String? mobile,
            String? installMentId)?
        getPaymentCompleteResponse,
    TResult? Function()? disposeEvent,
    TResult? Function(String studentId, ReceiptType receiptType)? getFeeReceipt,
    TResult? Function(String docName)? getFeeReceiptByDocName,
  }) {
    return getPaymentOrderId?.call(
        email, student, mobile, remark, installmentId, studentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentStatusType paymentStatusType, String userId,
            String? trackId)?
        getPaymentDashboard,
    TResult Function(String id)? selectPaymentsCheckboxEvent,
    TResult Function(int? index)? selectedItemIndex,
    TResult Function(
            String totalAmount, String installmentId, String studentId)?
        getPaymentFinalAmount,
    TResult Function(String email, String student, String mobile, String remark,
            String installmentId, String studentId)?
        getPaymentOrderId,
    TResult Function(String email, String student, String mobile, String remark,
            String installmentId, String studentId, String orderId)?
        getPaymentTokenAndOpenPayment,
    TResult Function(
            String? orderId,
            String? userName,
            String? email,
            String? remark,
            String? studenId,
            String? mobile,
            String? installMentId)?
        getPaymentCompleteResponse,
    TResult Function()? disposeEvent,
    TResult Function(String studentId, ReceiptType receiptType)? getFeeReceipt,
    TResult Function(String docName)? getFeeReceiptByDocName,
    required TResult orElse(),
  }) {
    if (getPaymentOrderId != null) {
      return getPaymentOrderId(
          email, student, mobile, remark, installmentId, studentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPaymentDashboard value) getPaymentDashboard,
    required TResult Function(_SelectPaymentsCheckboxEvent value)
        selectPaymentsCheckboxEvent,
    required TResult Function(_SelectedItemIndex value) selectedItemIndex,
    required TResult Function(_GetPaymentFinalAmount value)
        getPaymentFinalAmount,
    required TResult Function(_GetPaymentOrderId value) getPaymentOrderId,
    required TResult Function(_GetPaymentTokenAndOpenPayment value)
        getPaymentTokenAndOpenPayment,
    required TResult Function(_GetPaymentCompleteResponse value)
        getPaymentCompleteResponse,
    required TResult Function(_PaymentDisposeEvent value) disposeEvent,
    required TResult Function(_GetFeeReceipt value) getFeeReceipt,
    required TResult Function(_GetFeeReceiptByDocName value)
        getFeeReceiptByDocName,
  }) {
    return getPaymentOrderId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPaymentDashboard value)? getPaymentDashboard,
    TResult? Function(_SelectPaymentsCheckboxEvent value)?
        selectPaymentsCheckboxEvent,
    TResult? Function(_SelectedItemIndex value)? selectedItemIndex,
    TResult? Function(_GetPaymentFinalAmount value)? getPaymentFinalAmount,
    TResult? Function(_GetPaymentOrderId value)? getPaymentOrderId,
    TResult? Function(_GetPaymentTokenAndOpenPayment value)?
        getPaymentTokenAndOpenPayment,
    TResult? Function(_GetPaymentCompleteResponse value)?
        getPaymentCompleteResponse,
    TResult? Function(_PaymentDisposeEvent value)? disposeEvent,
    TResult? Function(_GetFeeReceipt value)? getFeeReceipt,
    TResult? Function(_GetFeeReceiptByDocName value)? getFeeReceiptByDocName,
  }) {
    return getPaymentOrderId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPaymentDashboard value)? getPaymentDashboard,
    TResult Function(_SelectPaymentsCheckboxEvent value)?
        selectPaymentsCheckboxEvent,
    TResult Function(_SelectedItemIndex value)? selectedItemIndex,
    TResult Function(_GetPaymentFinalAmount value)? getPaymentFinalAmount,
    TResult Function(_GetPaymentOrderId value)? getPaymentOrderId,
    TResult Function(_GetPaymentTokenAndOpenPayment value)?
        getPaymentTokenAndOpenPayment,
    TResult Function(_GetPaymentCompleteResponse value)?
        getPaymentCompleteResponse,
    TResult Function(_PaymentDisposeEvent value)? disposeEvent,
    TResult Function(_GetFeeReceipt value)? getFeeReceipt,
    TResult Function(_GetFeeReceiptByDocName value)? getFeeReceiptByDocName,
    required TResult orElse(),
  }) {
    if (getPaymentOrderId != null) {
      return getPaymentOrderId(this);
    }
    return orElse();
  }
}

abstract class _GetPaymentOrderId implements PaymentEvent {
  const factory _GetPaymentOrderId(
      {required final String email,
      required final String student,
      required final String mobile,
      required final String remark,
      required final String installmentId,
      required final String studentId}) = _$GetPaymentOrderIdImpl;

  String get email;
  String get student;
  String get mobile;
  String get remark;
  String get installmentId;
  String get studentId;
  @JsonKey(ignore: true)
  _$$GetPaymentOrderIdImplCopyWith<_$GetPaymentOrderIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetPaymentTokenAndOpenPaymentImplCopyWith<$Res> {
  factory _$$GetPaymentTokenAndOpenPaymentImplCopyWith(
          _$GetPaymentTokenAndOpenPaymentImpl value,
          $Res Function(_$GetPaymentTokenAndOpenPaymentImpl) then) =
      __$$GetPaymentTokenAndOpenPaymentImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String email,
      String student,
      String mobile,
      String remark,
      String installmentId,
      String studentId,
      String orderId});
}

/// @nodoc
class __$$GetPaymentTokenAndOpenPaymentImplCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res,
        _$GetPaymentTokenAndOpenPaymentImpl>
    implements _$$GetPaymentTokenAndOpenPaymentImplCopyWith<$Res> {
  __$$GetPaymentTokenAndOpenPaymentImplCopyWithImpl(
      _$GetPaymentTokenAndOpenPaymentImpl _value,
      $Res Function(_$GetPaymentTokenAndOpenPaymentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? student = null,
    Object? mobile = null,
    Object? remark = null,
    Object? installmentId = null,
    Object? studentId = null,
    Object? orderId = null,
  }) {
    return _then(_$GetPaymentTokenAndOpenPaymentImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      student: null == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      installmentId: null == installmentId
          ? _value.installmentId
          : installmentId // ignore: cast_nullable_to_non_nullable
              as String,
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetPaymentTokenAndOpenPaymentImpl
    implements _GetPaymentTokenAndOpenPayment {
  const _$GetPaymentTokenAndOpenPaymentImpl(
      {required this.email,
      required this.student,
      required this.mobile,
      required this.remark,
      required this.installmentId,
      required this.studentId,
      required this.orderId});

  @override
  final String email;
  @override
  final String student;
  @override
  final String mobile;
  @override
  final String remark;
  @override
  final String installmentId;
  @override
  final String studentId;
  @override
  final String orderId;

  @override
  String toString() {
    return 'PaymentEvent.getPaymentTokenAndOpenPayment(email: $email, student: $student, mobile: $mobile, remark: $remark, installmentId: $installmentId, studentId: $studentId, orderId: $orderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPaymentTokenAndOpenPaymentImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.student, student) || other.student == student) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.installmentId, installmentId) ||
                other.installmentId == installmentId) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, student, mobile, remark,
      installmentId, studentId, orderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPaymentTokenAndOpenPaymentImplCopyWith<
          _$GetPaymentTokenAndOpenPaymentImpl>
      get copyWith => __$$GetPaymentTokenAndOpenPaymentImplCopyWithImpl<
          _$GetPaymentTokenAndOpenPaymentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            PaymentStatusType paymentStatusType, String userId, String? trackId)
        getPaymentDashboard,
    required TResult Function(String id) selectPaymentsCheckboxEvent,
    required TResult Function(int? index) selectedItemIndex,
    required TResult Function(
            String totalAmount, String installmentId, String studentId)
        getPaymentFinalAmount,
    required TResult Function(String email, String student, String mobile,
            String remark, String installmentId, String studentId)
        getPaymentOrderId,
    required TResult Function(
            String email,
            String student,
            String mobile,
            String remark,
            String installmentId,
            String studentId,
            String orderId)
        getPaymentTokenAndOpenPayment,
    required TResult Function(
            String? orderId,
            String? userName,
            String? email,
            String? remark,
            String? studenId,
            String? mobile,
            String? installMentId)
        getPaymentCompleteResponse,
    required TResult Function() disposeEvent,
    required TResult Function(String studentId, ReceiptType receiptType)
        getFeeReceipt,
    required TResult Function(String docName) getFeeReceiptByDocName,
  }) {
    return getPaymentTokenAndOpenPayment(
        email, student, mobile, remark, installmentId, studentId, orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentStatusType paymentStatusType, String userId,
            String? trackId)?
        getPaymentDashboard,
    TResult? Function(String id)? selectPaymentsCheckboxEvent,
    TResult? Function(int? index)? selectedItemIndex,
    TResult? Function(
            String totalAmount, String installmentId, String studentId)?
        getPaymentFinalAmount,
    TResult? Function(String email, String student, String mobile,
            String remark, String installmentId, String studentId)?
        getPaymentOrderId,
    TResult? Function(
            String email,
            String student,
            String mobile,
            String remark,
            String installmentId,
            String studentId,
            String orderId)?
        getPaymentTokenAndOpenPayment,
    TResult? Function(
            String? orderId,
            String? userName,
            String? email,
            String? remark,
            String? studenId,
            String? mobile,
            String? installMentId)?
        getPaymentCompleteResponse,
    TResult? Function()? disposeEvent,
    TResult? Function(String studentId, ReceiptType receiptType)? getFeeReceipt,
    TResult? Function(String docName)? getFeeReceiptByDocName,
  }) {
    return getPaymentTokenAndOpenPayment?.call(
        email, student, mobile, remark, installmentId, studentId, orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentStatusType paymentStatusType, String userId,
            String? trackId)?
        getPaymentDashboard,
    TResult Function(String id)? selectPaymentsCheckboxEvent,
    TResult Function(int? index)? selectedItemIndex,
    TResult Function(
            String totalAmount, String installmentId, String studentId)?
        getPaymentFinalAmount,
    TResult Function(String email, String student, String mobile, String remark,
            String installmentId, String studentId)?
        getPaymentOrderId,
    TResult Function(String email, String student, String mobile, String remark,
            String installmentId, String studentId, String orderId)?
        getPaymentTokenAndOpenPayment,
    TResult Function(
            String? orderId,
            String? userName,
            String? email,
            String? remark,
            String? studenId,
            String? mobile,
            String? installMentId)?
        getPaymentCompleteResponse,
    TResult Function()? disposeEvent,
    TResult Function(String studentId, ReceiptType receiptType)? getFeeReceipt,
    TResult Function(String docName)? getFeeReceiptByDocName,
    required TResult orElse(),
  }) {
    if (getPaymentTokenAndOpenPayment != null) {
      return getPaymentTokenAndOpenPayment(
          email, student, mobile, remark, installmentId, studentId, orderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPaymentDashboard value) getPaymentDashboard,
    required TResult Function(_SelectPaymentsCheckboxEvent value)
        selectPaymentsCheckboxEvent,
    required TResult Function(_SelectedItemIndex value) selectedItemIndex,
    required TResult Function(_GetPaymentFinalAmount value)
        getPaymentFinalAmount,
    required TResult Function(_GetPaymentOrderId value) getPaymentOrderId,
    required TResult Function(_GetPaymentTokenAndOpenPayment value)
        getPaymentTokenAndOpenPayment,
    required TResult Function(_GetPaymentCompleteResponse value)
        getPaymentCompleteResponse,
    required TResult Function(_PaymentDisposeEvent value) disposeEvent,
    required TResult Function(_GetFeeReceipt value) getFeeReceipt,
    required TResult Function(_GetFeeReceiptByDocName value)
        getFeeReceiptByDocName,
  }) {
    return getPaymentTokenAndOpenPayment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPaymentDashboard value)? getPaymentDashboard,
    TResult? Function(_SelectPaymentsCheckboxEvent value)?
        selectPaymentsCheckboxEvent,
    TResult? Function(_SelectedItemIndex value)? selectedItemIndex,
    TResult? Function(_GetPaymentFinalAmount value)? getPaymentFinalAmount,
    TResult? Function(_GetPaymentOrderId value)? getPaymentOrderId,
    TResult? Function(_GetPaymentTokenAndOpenPayment value)?
        getPaymentTokenAndOpenPayment,
    TResult? Function(_GetPaymentCompleteResponse value)?
        getPaymentCompleteResponse,
    TResult? Function(_PaymentDisposeEvent value)? disposeEvent,
    TResult? Function(_GetFeeReceipt value)? getFeeReceipt,
    TResult? Function(_GetFeeReceiptByDocName value)? getFeeReceiptByDocName,
  }) {
    return getPaymentTokenAndOpenPayment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPaymentDashboard value)? getPaymentDashboard,
    TResult Function(_SelectPaymentsCheckboxEvent value)?
        selectPaymentsCheckboxEvent,
    TResult Function(_SelectedItemIndex value)? selectedItemIndex,
    TResult Function(_GetPaymentFinalAmount value)? getPaymentFinalAmount,
    TResult Function(_GetPaymentOrderId value)? getPaymentOrderId,
    TResult Function(_GetPaymentTokenAndOpenPayment value)?
        getPaymentTokenAndOpenPayment,
    TResult Function(_GetPaymentCompleteResponse value)?
        getPaymentCompleteResponse,
    TResult Function(_PaymentDisposeEvent value)? disposeEvent,
    TResult Function(_GetFeeReceipt value)? getFeeReceipt,
    TResult Function(_GetFeeReceiptByDocName value)? getFeeReceiptByDocName,
    required TResult orElse(),
  }) {
    if (getPaymentTokenAndOpenPayment != null) {
      return getPaymentTokenAndOpenPayment(this);
    }
    return orElse();
  }
}

abstract class _GetPaymentTokenAndOpenPayment implements PaymentEvent {
  const factory _GetPaymentTokenAndOpenPayment(
      {required final String email,
      required final String student,
      required final String mobile,
      required final String remark,
      required final String installmentId,
      required final String studentId,
      required final String orderId}) = _$GetPaymentTokenAndOpenPaymentImpl;

  String get email;
  String get student;
  String get mobile;
  String get remark;
  String get installmentId;
  String get studentId;
  String get orderId;
  @JsonKey(ignore: true)
  _$$GetPaymentTokenAndOpenPaymentImplCopyWith<
          _$GetPaymentTokenAndOpenPaymentImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetPaymentCompleteResponseImplCopyWith<$Res> {
  factory _$$GetPaymentCompleteResponseImplCopyWith(
          _$GetPaymentCompleteResponseImpl value,
          $Res Function(_$GetPaymentCompleteResponseImpl) then) =
      __$$GetPaymentCompleteResponseImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? orderId,
      String? userName,
      String? email,
      String? remark,
      String? studenId,
      String? mobile,
      String? installMentId});
}

/// @nodoc
class __$$GetPaymentCompleteResponseImplCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$GetPaymentCompleteResponseImpl>
    implements _$$GetPaymentCompleteResponseImplCopyWith<$Res> {
  __$$GetPaymentCompleteResponseImplCopyWithImpl(
      _$GetPaymentCompleteResponseImpl _value,
      $Res Function(_$GetPaymentCompleteResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = freezed,
    Object? userName = freezed,
    Object? email = freezed,
    Object? remark = freezed,
    Object? studenId = freezed,
    Object? mobile = freezed,
    Object? installMentId = freezed,
  }) {
    return _then(_$GetPaymentCompleteResponseImpl(
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      remark: freezed == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String?,
      studenId: freezed == studenId
          ? _value.studenId
          : studenId // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      installMentId: freezed == installMentId
          ? _value.installMentId
          : installMentId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GetPaymentCompleteResponseImpl implements _GetPaymentCompleteResponse {
  const _$GetPaymentCompleteResponseImpl(
      {this.orderId,
      this.userName,
      this.email,
      this.remark,
      this.studenId,
      this.mobile,
      this.installMentId});

  @override
  final String? orderId;
  @override
  final String? userName;
  @override
  final String? email;
  @override
  final String? remark;
  @override
  final String? studenId;
  @override
  final String? mobile;
  @override
  final String? installMentId;

  @override
  String toString() {
    return 'PaymentEvent.getPaymentCompleteResponse(orderId: $orderId, userName: $userName, email: $email, remark: $remark, studenId: $studenId, mobile: $mobile, installMentId: $installMentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPaymentCompleteResponseImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.studenId, studenId) ||
                other.studenId == studenId) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.installMentId, installMentId) ||
                other.installMentId == installMentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId, userName, email, remark,
      studenId, mobile, installMentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPaymentCompleteResponseImplCopyWith<_$GetPaymentCompleteResponseImpl>
      get copyWith => __$$GetPaymentCompleteResponseImplCopyWithImpl<
          _$GetPaymentCompleteResponseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            PaymentStatusType paymentStatusType, String userId, String? trackId)
        getPaymentDashboard,
    required TResult Function(String id) selectPaymentsCheckboxEvent,
    required TResult Function(int? index) selectedItemIndex,
    required TResult Function(
            String totalAmount, String installmentId, String studentId)
        getPaymentFinalAmount,
    required TResult Function(String email, String student, String mobile,
            String remark, String installmentId, String studentId)
        getPaymentOrderId,
    required TResult Function(
            String email,
            String student,
            String mobile,
            String remark,
            String installmentId,
            String studentId,
            String orderId)
        getPaymentTokenAndOpenPayment,
    required TResult Function(
            String? orderId,
            String? userName,
            String? email,
            String? remark,
            String? studenId,
            String? mobile,
            String? installMentId)
        getPaymentCompleteResponse,
    required TResult Function() disposeEvent,
    required TResult Function(String studentId, ReceiptType receiptType)
        getFeeReceipt,
    required TResult Function(String docName) getFeeReceiptByDocName,
  }) {
    return getPaymentCompleteResponse(
        orderId, userName, email, remark, studenId, mobile, installMentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentStatusType paymentStatusType, String userId,
            String? trackId)?
        getPaymentDashboard,
    TResult? Function(String id)? selectPaymentsCheckboxEvent,
    TResult? Function(int? index)? selectedItemIndex,
    TResult? Function(
            String totalAmount, String installmentId, String studentId)?
        getPaymentFinalAmount,
    TResult? Function(String email, String student, String mobile,
            String remark, String installmentId, String studentId)?
        getPaymentOrderId,
    TResult? Function(
            String email,
            String student,
            String mobile,
            String remark,
            String installmentId,
            String studentId,
            String orderId)?
        getPaymentTokenAndOpenPayment,
    TResult? Function(
            String? orderId,
            String? userName,
            String? email,
            String? remark,
            String? studenId,
            String? mobile,
            String? installMentId)?
        getPaymentCompleteResponse,
    TResult? Function()? disposeEvent,
    TResult? Function(String studentId, ReceiptType receiptType)? getFeeReceipt,
    TResult? Function(String docName)? getFeeReceiptByDocName,
  }) {
    return getPaymentCompleteResponse?.call(
        orderId, userName, email, remark, studenId, mobile, installMentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentStatusType paymentStatusType, String userId,
            String? trackId)?
        getPaymentDashboard,
    TResult Function(String id)? selectPaymentsCheckboxEvent,
    TResult Function(int? index)? selectedItemIndex,
    TResult Function(
            String totalAmount, String installmentId, String studentId)?
        getPaymentFinalAmount,
    TResult Function(String email, String student, String mobile, String remark,
            String installmentId, String studentId)?
        getPaymentOrderId,
    TResult Function(String email, String student, String mobile, String remark,
            String installmentId, String studentId, String orderId)?
        getPaymentTokenAndOpenPayment,
    TResult Function(
            String? orderId,
            String? userName,
            String? email,
            String? remark,
            String? studenId,
            String? mobile,
            String? installMentId)?
        getPaymentCompleteResponse,
    TResult Function()? disposeEvent,
    TResult Function(String studentId, ReceiptType receiptType)? getFeeReceipt,
    TResult Function(String docName)? getFeeReceiptByDocName,
    required TResult orElse(),
  }) {
    if (getPaymentCompleteResponse != null) {
      return getPaymentCompleteResponse(
          orderId, userName, email, remark, studenId, mobile, installMentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPaymentDashboard value) getPaymentDashboard,
    required TResult Function(_SelectPaymentsCheckboxEvent value)
        selectPaymentsCheckboxEvent,
    required TResult Function(_SelectedItemIndex value) selectedItemIndex,
    required TResult Function(_GetPaymentFinalAmount value)
        getPaymentFinalAmount,
    required TResult Function(_GetPaymentOrderId value) getPaymentOrderId,
    required TResult Function(_GetPaymentTokenAndOpenPayment value)
        getPaymentTokenAndOpenPayment,
    required TResult Function(_GetPaymentCompleteResponse value)
        getPaymentCompleteResponse,
    required TResult Function(_PaymentDisposeEvent value) disposeEvent,
    required TResult Function(_GetFeeReceipt value) getFeeReceipt,
    required TResult Function(_GetFeeReceiptByDocName value)
        getFeeReceiptByDocName,
  }) {
    return getPaymentCompleteResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPaymentDashboard value)? getPaymentDashboard,
    TResult? Function(_SelectPaymentsCheckboxEvent value)?
        selectPaymentsCheckboxEvent,
    TResult? Function(_SelectedItemIndex value)? selectedItemIndex,
    TResult? Function(_GetPaymentFinalAmount value)? getPaymentFinalAmount,
    TResult? Function(_GetPaymentOrderId value)? getPaymentOrderId,
    TResult? Function(_GetPaymentTokenAndOpenPayment value)?
        getPaymentTokenAndOpenPayment,
    TResult? Function(_GetPaymentCompleteResponse value)?
        getPaymentCompleteResponse,
    TResult? Function(_PaymentDisposeEvent value)? disposeEvent,
    TResult? Function(_GetFeeReceipt value)? getFeeReceipt,
    TResult? Function(_GetFeeReceiptByDocName value)? getFeeReceiptByDocName,
  }) {
    return getPaymentCompleteResponse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPaymentDashboard value)? getPaymentDashboard,
    TResult Function(_SelectPaymentsCheckboxEvent value)?
        selectPaymentsCheckboxEvent,
    TResult Function(_SelectedItemIndex value)? selectedItemIndex,
    TResult Function(_GetPaymentFinalAmount value)? getPaymentFinalAmount,
    TResult Function(_GetPaymentOrderId value)? getPaymentOrderId,
    TResult Function(_GetPaymentTokenAndOpenPayment value)?
        getPaymentTokenAndOpenPayment,
    TResult Function(_GetPaymentCompleteResponse value)?
        getPaymentCompleteResponse,
    TResult Function(_PaymentDisposeEvent value)? disposeEvent,
    TResult Function(_GetFeeReceipt value)? getFeeReceipt,
    TResult Function(_GetFeeReceiptByDocName value)? getFeeReceiptByDocName,
    required TResult orElse(),
  }) {
    if (getPaymentCompleteResponse != null) {
      return getPaymentCompleteResponse(this);
    }
    return orElse();
  }
}

abstract class _GetPaymentCompleteResponse implements PaymentEvent {
  const factory _GetPaymentCompleteResponse(
      {final String? orderId,
      final String? userName,
      final String? email,
      final String? remark,
      final String? studenId,
      final String? mobile,
      final String? installMentId}) = _$GetPaymentCompleteResponseImpl;

  String? get orderId;
  String? get userName;
  String? get email;
  String? get remark;
  String? get studenId;
  String? get mobile;
  String? get installMentId;
  @JsonKey(ignore: true)
  _$$GetPaymentCompleteResponseImplCopyWith<_$GetPaymentCompleteResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaymentDisposeEventImplCopyWith<$Res> {
  factory _$$PaymentDisposeEventImplCopyWith(_$PaymentDisposeEventImpl value,
          $Res Function(_$PaymentDisposeEventImpl) then) =
      __$$PaymentDisposeEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PaymentDisposeEventImplCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$PaymentDisposeEventImpl>
    implements _$$PaymentDisposeEventImplCopyWith<$Res> {
  __$$PaymentDisposeEventImplCopyWithImpl(_$PaymentDisposeEventImpl _value,
      $Res Function(_$PaymentDisposeEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PaymentDisposeEventImpl implements _PaymentDisposeEvent {
  const _$PaymentDisposeEventImpl();

  @override
  String toString() {
    return 'PaymentEvent.disposeEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentDisposeEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            PaymentStatusType paymentStatusType, String userId, String? trackId)
        getPaymentDashboard,
    required TResult Function(String id) selectPaymentsCheckboxEvent,
    required TResult Function(int? index) selectedItemIndex,
    required TResult Function(
            String totalAmount, String installmentId, String studentId)
        getPaymentFinalAmount,
    required TResult Function(String email, String student, String mobile,
            String remark, String installmentId, String studentId)
        getPaymentOrderId,
    required TResult Function(
            String email,
            String student,
            String mobile,
            String remark,
            String installmentId,
            String studentId,
            String orderId)
        getPaymentTokenAndOpenPayment,
    required TResult Function(
            String? orderId,
            String? userName,
            String? email,
            String? remark,
            String? studenId,
            String? mobile,
            String? installMentId)
        getPaymentCompleteResponse,
    required TResult Function() disposeEvent,
    required TResult Function(String studentId, ReceiptType receiptType)
        getFeeReceipt,
    required TResult Function(String docName) getFeeReceiptByDocName,
  }) {
    return disposeEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentStatusType paymentStatusType, String userId,
            String? trackId)?
        getPaymentDashboard,
    TResult? Function(String id)? selectPaymentsCheckboxEvent,
    TResult? Function(int? index)? selectedItemIndex,
    TResult? Function(
            String totalAmount, String installmentId, String studentId)?
        getPaymentFinalAmount,
    TResult? Function(String email, String student, String mobile,
            String remark, String installmentId, String studentId)?
        getPaymentOrderId,
    TResult? Function(
            String email,
            String student,
            String mobile,
            String remark,
            String installmentId,
            String studentId,
            String orderId)?
        getPaymentTokenAndOpenPayment,
    TResult? Function(
            String? orderId,
            String? userName,
            String? email,
            String? remark,
            String? studenId,
            String? mobile,
            String? installMentId)?
        getPaymentCompleteResponse,
    TResult? Function()? disposeEvent,
    TResult? Function(String studentId, ReceiptType receiptType)? getFeeReceipt,
    TResult? Function(String docName)? getFeeReceiptByDocName,
  }) {
    return disposeEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentStatusType paymentStatusType, String userId,
            String? trackId)?
        getPaymentDashboard,
    TResult Function(String id)? selectPaymentsCheckboxEvent,
    TResult Function(int? index)? selectedItemIndex,
    TResult Function(
            String totalAmount, String installmentId, String studentId)?
        getPaymentFinalAmount,
    TResult Function(String email, String student, String mobile, String remark,
            String installmentId, String studentId)?
        getPaymentOrderId,
    TResult Function(String email, String student, String mobile, String remark,
            String installmentId, String studentId, String orderId)?
        getPaymentTokenAndOpenPayment,
    TResult Function(
            String? orderId,
            String? userName,
            String? email,
            String? remark,
            String? studenId,
            String? mobile,
            String? installMentId)?
        getPaymentCompleteResponse,
    TResult Function()? disposeEvent,
    TResult Function(String studentId, ReceiptType receiptType)? getFeeReceipt,
    TResult Function(String docName)? getFeeReceiptByDocName,
    required TResult orElse(),
  }) {
    if (disposeEvent != null) {
      return disposeEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPaymentDashboard value) getPaymentDashboard,
    required TResult Function(_SelectPaymentsCheckboxEvent value)
        selectPaymentsCheckboxEvent,
    required TResult Function(_SelectedItemIndex value) selectedItemIndex,
    required TResult Function(_GetPaymentFinalAmount value)
        getPaymentFinalAmount,
    required TResult Function(_GetPaymentOrderId value) getPaymentOrderId,
    required TResult Function(_GetPaymentTokenAndOpenPayment value)
        getPaymentTokenAndOpenPayment,
    required TResult Function(_GetPaymentCompleteResponse value)
        getPaymentCompleteResponse,
    required TResult Function(_PaymentDisposeEvent value) disposeEvent,
    required TResult Function(_GetFeeReceipt value) getFeeReceipt,
    required TResult Function(_GetFeeReceiptByDocName value)
        getFeeReceiptByDocName,
  }) {
    return disposeEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPaymentDashboard value)? getPaymentDashboard,
    TResult? Function(_SelectPaymentsCheckboxEvent value)?
        selectPaymentsCheckboxEvent,
    TResult? Function(_SelectedItemIndex value)? selectedItemIndex,
    TResult? Function(_GetPaymentFinalAmount value)? getPaymentFinalAmount,
    TResult? Function(_GetPaymentOrderId value)? getPaymentOrderId,
    TResult? Function(_GetPaymentTokenAndOpenPayment value)?
        getPaymentTokenAndOpenPayment,
    TResult? Function(_GetPaymentCompleteResponse value)?
        getPaymentCompleteResponse,
    TResult? Function(_PaymentDisposeEvent value)? disposeEvent,
    TResult? Function(_GetFeeReceipt value)? getFeeReceipt,
    TResult? Function(_GetFeeReceiptByDocName value)? getFeeReceiptByDocName,
  }) {
    return disposeEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPaymentDashboard value)? getPaymentDashboard,
    TResult Function(_SelectPaymentsCheckboxEvent value)?
        selectPaymentsCheckboxEvent,
    TResult Function(_SelectedItemIndex value)? selectedItemIndex,
    TResult Function(_GetPaymentFinalAmount value)? getPaymentFinalAmount,
    TResult Function(_GetPaymentOrderId value)? getPaymentOrderId,
    TResult Function(_GetPaymentTokenAndOpenPayment value)?
        getPaymentTokenAndOpenPayment,
    TResult Function(_GetPaymentCompleteResponse value)?
        getPaymentCompleteResponse,
    TResult Function(_PaymentDisposeEvent value)? disposeEvent,
    TResult Function(_GetFeeReceipt value)? getFeeReceipt,
    TResult Function(_GetFeeReceiptByDocName value)? getFeeReceiptByDocName,
    required TResult orElse(),
  }) {
    if (disposeEvent != null) {
      return disposeEvent(this);
    }
    return orElse();
  }
}

abstract class _PaymentDisposeEvent implements PaymentEvent {
  const factory _PaymentDisposeEvent() = _$PaymentDisposeEventImpl;
}

/// @nodoc
abstract class _$$GetFeeReceiptImplCopyWith<$Res> {
  factory _$$GetFeeReceiptImplCopyWith(
          _$GetFeeReceiptImpl value, $Res Function(_$GetFeeReceiptImpl) then) =
      __$$GetFeeReceiptImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String studentId, ReceiptType receiptType});
}

/// @nodoc
class __$$GetFeeReceiptImplCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$GetFeeReceiptImpl>
    implements _$$GetFeeReceiptImplCopyWith<$Res> {
  __$$GetFeeReceiptImplCopyWithImpl(
      _$GetFeeReceiptImpl _value, $Res Function(_$GetFeeReceiptImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = null,
    Object? receiptType = null,
  }) {
    return _then(_$GetFeeReceiptImpl(
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String,
      receiptType: null == receiptType
          ? _value.receiptType
          : receiptType // ignore: cast_nullable_to_non_nullable
              as ReceiptType,
    ));
  }
}

/// @nodoc

class _$GetFeeReceiptImpl implements _GetFeeReceipt {
  const _$GetFeeReceiptImpl(
      {required this.studentId, required this.receiptType});

  @override
  final String studentId;
  @override
  final ReceiptType receiptType;

  @override
  String toString() {
    return 'PaymentEvent.getFeeReceipt(studentId: $studentId, receiptType: $receiptType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFeeReceiptImpl &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.receiptType, receiptType) ||
                other.receiptType == receiptType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, studentId, receiptType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFeeReceiptImplCopyWith<_$GetFeeReceiptImpl> get copyWith =>
      __$$GetFeeReceiptImplCopyWithImpl<_$GetFeeReceiptImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            PaymentStatusType paymentStatusType, String userId, String? trackId)
        getPaymentDashboard,
    required TResult Function(String id) selectPaymentsCheckboxEvent,
    required TResult Function(int? index) selectedItemIndex,
    required TResult Function(
            String totalAmount, String installmentId, String studentId)
        getPaymentFinalAmount,
    required TResult Function(String email, String student, String mobile,
            String remark, String installmentId, String studentId)
        getPaymentOrderId,
    required TResult Function(
            String email,
            String student,
            String mobile,
            String remark,
            String installmentId,
            String studentId,
            String orderId)
        getPaymentTokenAndOpenPayment,
    required TResult Function(
            String? orderId,
            String? userName,
            String? email,
            String? remark,
            String? studenId,
            String? mobile,
            String? installMentId)
        getPaymentCompleteResponse,
    required TResult Function() disposeEvent,
    required TResult Function(String studentId, ReceiptType receiptType)
        getFeeReceipt,
    required TResult Function(String docName) getFeeReceiptByDocName,
  }) {
    return getFeeReceipt(studentId, receiptType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentStatusType paymentStatusType, String userId,
            String? trackId)?
        getPaymentDashboard,
    TResult? Function(String id)? selectPaymentsCheckboxEvent,
    TResult? Function(int? index)? selectedItemIndex,
    TResult? Function(
            String totalAmount, String installmentId, String studentId)?
        getPaymentFinalAmount,
    TResult? Function(String email, String student, String mobile,
            String remark, String installmentId, String studentId)?
        getPaymentOrderId,
    TResult? Function(
            String email,
            String student,
            String mobile,
            String remark,
            String installmentId,
            String studentId,
            String orderId)?
        getPaymentTokenAndOpenPayment,
    TResult? Function(
            String? orderId,
            String? userName,
            String? email,
            String? remark,
            String? studenId,
            String? mobile,
            String? installMentId)?
        getPaymentCompleteResponse,
    TResult? Function()? disposeEvent,
    TResult? Function(String studentId, ReceiptType receiptType)? getFeeReceipt,
    TResult? Function(String docName)? getFeeReceiptByDocName,
  }) {
    return getFeeReceipt?.call(studentId, receiptType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentStatusType paymentStatusType, String userId,
            String? trackId)?
        getPaymentDashboard,
    TResult Function(String id)? selectPaymentsCheckboxEvent,
    TResult Function(int? index)? selectedItemIndex,
    TResult Function(
            String totalAmount, String installmentId, String studentId)?
        getPaymentFinalAmount,
    TResult Function(String email, String student, String mobile, String remark,
            String installmentId, String studentId)?
        getPaymentOrderId,
    TResult Function(String email, String student, String mobile, String remark,
            String installmentId, String studentId, String orderId)?
        getPaymentTokenAndOpenPayment,
    TResult Function(
            String? orderId,
            String? userName,
            String? email,
            String? remark,
            String? studenId,
            String? mobile,
            String? installMentId)?
        getPaymentCompleteResponse,
    TResult Function()? disposeEvent,
    TResult Function(String studentId, ReceiptType receiptType)? getFeeReceipt,
    TResult Function(String docName)? getFeeReceiptByDocName,
    required TResult orElse(),
  }) {
    if (getFeeReceipt != null) {
      return getFeeReceipt(studentId, receiptType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPaymentDashboard value) getPaymentDashboard,
    required TResult Function(_SelectPaymentsCheckboxEvent value)
        selectPaymentsCheckboxEvent,
    required TResult Function(_SelectedItemIndex value) selectedItemIndex,
    required TResult Function(_GetPaymentFinalAmount value)
        getPaymentFinalAmount,
    required TResult Function(_GetPaymentOrderId value) getPaymentOrderId,
    required TResult Function(_GetPaymentTokenAndOpenPayment value)
        getPaymentTokenAndOpenPayment,
    required TResult Function(_GetPaymentCompleteResponse value)
        getPaymentCompleteResponse,
    required TResult Function(_PaymentDisposeEvent value) disposeEvent,
    required TResult Function(_GetFeeReceipt value) getFeeReceipt,
    required TResult Function(_GetFeeReceiptByDocName value)
        getFeeReceiptByDocName,
  }) {
    return getFeeReceipt(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPaymentDashboard value)? getPaymentDashboard,
    TResult? Function(_SelectPaymentsCheckboxEvent value)?
        selectPaymentsCheckboxEvent,
    TResult? Function(_SelectedItemIndex value)? selectedItemIndex,
    TResult? Function(_GetPaymentFinalAmount value)? getPaymentFinalAmount,
    TResult? Function(_GetPaymentOrderId value)? getPaymentOrderId,
    TResult? Function(_GetPaymentTokenAndOpenPayment value)?
        getPaymentTokenAndOpenPayment,
    TResult? Function(_GetPaymentCompleteResponse value)?
        getPaymentCompleteResponse,
    TResult? Function(_PaymentDisposeEvent value)? disposeEvent,
    TResult? Function(_GetFeeReceipt value)? getFeeReceipt,
    TResult? Function(_GetFeeReceiptByDocName value)? getFeeReceiptByDocName,
  }) {
    return getFeeReceipt?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPaymentDashboard value)? getPaymentDashboard,
    TResult Function(_SelectPaymentsCheckboxEvent value)?
        selectPaymentsCheckboxEvent,
    TResult Function(_SelectedItemIndex value)? selectedItemIndex,
    TResult Function(_GetPaymentFinalAmount value)? getPaymentFinalAmount,
    TResult Function(_GetPaymentOrderId value)? getPaymentOrderId,
    TResult Function(_GetPaymentTokenAndOpenPayment value)?
        getPaymentTokenAndOpenPayment,
    TResult Function(_GetPaymentCompleteResponse value)?
        getPaymentCompleteResponse,
    TResult Function(_PaymentDisposeEvent value)? disposeEvent,
    TResult Function(_GetFeeReceipt value)? getFeeReceipt,
    TResult Function(_GetFeeReceiptByDocName value)? getFeeReceiptByDocName,
    required TResult orElse(),
  }) {
    if (getFeeReceipt != null) {
      return getFeeReceipt(this);
    }
    return orElse();
  }
}

abstract class _GetFeeReceipt implements PaymentEvent {
  const factory _GetFeeReceipt(
      {required final String studentId,
      required final ReceiptType receiptType}) = _$GetFeeReceiptImpl;

  String get studentId;
  ReceiptType get receiptType;
  @JsonKey(ignore: true)
  _$$GetFeeReceiptImplCopyWith<_$GetFeeReceiptImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetFeeReceiptByDocNameImplCopyWith<$Res> {
  factory _$$GetFeeReceiptByDocNameImplCopyWith(
          _$GetFeeReceiptByDocNameImpl value,
          $Res Function(_$GetFeeReceiptByDocNameImpl) then) =
      __$$GetFeeReceiptByDocNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String docName});
}

/// @nodoc
class __$$GetFeeReceiptByDocNameImplCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$GetFeeReceiptByDocNameImpl>
    implements _$$GetFeeReceiptByDocNameImplCopyWith<$Res> {
  __$$GetFeeReceiptByDocNameImplCopyWithImpl(
      _$GetFeeReceiptByDocNameImpl _value,
      $Res Function(_$GetFeeReceiptByDocNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? docName = null,
  }) {
    return _then(_$GetFeeReceiptByDocNameImpl(
      null == docName
          ? _value.docName
          : docName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetFeeReceiptByDocNameImpl implements _GetFeeReceiptByDocName {
  const _$GetFeeReceiptByDocNameImpl(this.docName);

  @override
  final String docName;

  @override
  String toString() {
    return 'PaymentEvent.getFeeReceiptByDocName(docName: $docName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFeeReceiptByDocNameImpl &&
            (identical(other.docName, docName) || other.docName == docName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, docName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFeeReceiptByDocNameImplCopyWith<_$GetFeeReceiptByDocNameImpl>
      get copyWith => __$$GetFeeReceiptByDocNameImplCopyWithImpl<
          _$GetFeeReceiptByDocNameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            PaymentStatusType paymentStatusType, String userId, String? trackId)
        getPaymentDashboard,
    required TResult Function(String id) selectPaymentsCheckboxEvent,
    required TResult Function(int? index) selectedItemIndex,
    required TResult Function(
            String totalAmount, String installmentId, String studentId)
        getPaymentFinalAmount,
    required TResult Function(String email, String student, String mobile,
            String remark, String installmentId, String studentId)
        getPaymentOrderId,
    required TResult Function(
            String email,
            String student,
            String mobile,
            String remark,
            String installmentId,
            String studentId,
            String orderId)
        getPaymentTokenAndOpenPayment,
    required TResult Function(
            String? orderId,
            String? userName,
            String? email,
            String? remark,
            String? studenId,
            String? mobile,
            String? installMentId)
        getPaymentCompleteResponse,
    required TResult Function() disposeEvent,
    required TResult Function(String studentId, ReceiptType receiptType)
        getFeeReceipt,
    required TResult Function(String docName) getFeeReceiptByDocName,
  }) {
    return getFeeReceiptByDocName(docName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentStatusType paymentStatusType, String userId,
            String? trackId)?
        getPaymentDashboard,
    TResult? Function(String id)? selectPaymentsCheckboxEvent,
    TResult? Function(int? index)? selectedItemIndex,
    TResult? Function(
            String totalAmount, String installmentId, String studentId)?
        getPaymentFinalAmount,
    TResult? Function(String email, String student, String mobile,
            String remark, String installmentId, String studentId)?
        getPaymentOrderId,
    TResult? Function(
            String email,
            String student,
            String mobile,
            String remark,
            String installmentId,
            String studentId,
            String orderId)?
        getPaymentTokenAndOpenPayment,
    TResult? Function(
            String? orderId,
            String? userName,
            String? email,
            String? remark,
            String? studenId,
            String? mobile,
            String? installMentId)?
        getPaymentCompleteResponse,
    TResult? Function()? disposeEvent,
    TResult? Function(String studentId, ReceiptType receiptType)? getFeeReceipt,
    TResult? Function(String docName)? getFeeReceiptByDocName,
  }) {
    return getFeeReceiptByDocName?.call(docName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentStatusType paymentStatusType, String userId,
            String? trackId)?
        getPaymentDashboard,
    TResult Function(String id)? selectPaymentsCheckboxEvent,
    TResult Function(int? index)? selectedItemIndex,
    TResult Function(
            String totalAmount, String installmentId, String studentId)?
        getPaymentFinalAmount,
    TResult Function(String email, String student, String mobile, String remark,
            String installmentId, String studentId)?
        getPaymentOrderId,
    TResult Function(String email, String student, String mobile, String remark,
            String installmentId, String studentId, String orderId)?
        getPaymentTokenAndOpenPayment,
    TResult Function(
            String? orderId,
            String? userName,
            String? email,
            String? remark,
            String? studenId,
            String? mobile,
            String? installMentId)?
        getPaymentCompleteResponse,
    TResult Function()? disposeEvent,
    TResult Function(String studentId, ReceiptType receiptType)? getFeeReceipt,
    TResult Function(String docName)? getFeeReceiptByDocName,
    required TResult orElse(),
  }) {
    if (getFeeReceiptByDocName != null) {
      return getFeeReceiptByDocName(docName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPaymentDashboard value) getPaymentDashboard,
    required TResult Function(_SelectPaymentsCheckboxEvent value)
        selectPaymentsCheckboxEvent,
    required TResult Function(_SelectedItemIndex value) selectedItemIndex,
    required TResult Function(_GetPaymentFinalAmount value)
        getPaymentFinalAmount,
    required TResult Function(_GetPaymentOrderId value) getPaymentOrderId,
    required TResult Function(_GetPaymentTokenAndOpenPayment value)
        getPaymentTokenAndOpenPayment,
    required TResult Function(_GetPaymentCompleteResponse value)
        getPaymentCompleteResponse,
    required TResult Function(_PaymentDisposeEvent value) disposeEvent,
    required TResult Function(_GetFeeReceipt value) getFeeReceipt,
    required TResult Function(_GetFeeReceiptByDocName value)
        getFeeReceiptByDocName,
  }) {
    return getFeeReceiptByDocName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPaymentDashboard value)? getPaymentDashboard,
    TResult? Function(_SelectPaymentsCheckboxEvent value)?
        selectPaymentsCheckboxEvent,
    TResult? Function(_SelectedItemIndex value)? selectedItemIndex,
    TResult? Function(_GetPaymentFinalAmount value)? getPaymentFinalAmount,
    TResult? Function(_GetPaymentOrderId value)? getPaymentOrderId,
    TResult? Function(_GetPaymentTokenAndOpenPayment value)?
        getPaymentTokenAndOpenPayment,
    TResult? Function(_GetPaymentCompleteResponse value)?
        getPaymentCompleteResponse,
    TResult? Function(_PaymentDisposeEvent value)? disposeEvent,
    TResult? Function(_GetFeeReceipt value)? getFeeReceipt,
    TResult? Function(_GetFeeReceiptByDocName value)? getFeeReceiptByDocName,
  }) {
    return getFeeReceiptByDocName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPaymentDashboard value)? getPaymentDashboard,
    TResult Function(_SelectPaymentsCheckboxEvent value)?
        selectPaymentsCheckboxEvent,
    TResult Function(_SelectedItemIndex value)? selectedItemIndex,
    TResult Function(_GetPaymentFinalAmount value)? getPaymentFinalAmount,
    TResult Function(_GetPaymentOrderId value)? getPaymentOrderId,
    TResult Function(_GetPaymentTokenAndOpenPayment value)?
        getPaymentTokenAndOpenPayment,
    TResult Function(_GetPaymentCompleteResponse value)?
        getPaymentCompleteResponse,
    TResult Function(_PaymentDisposeEvent value)? disposeEvent,
    TResult Function(_GetFeeReceipt value)? getFeeReceipt,
    TResult Function(_GetFeeReceiptByDocName value)? getFeeReceiptByDocName,
    required TResult orElse(),
  }) {
    if (getFeeReceiptByDocName != null) {
      return getFeeReceiptByDocName(this);
    }
    return orElse();
  }
}

abstract class _GetFeeReceiptByDocName implements PaymentEvent {
  const factory _GetFeeReceiptByDocName(final String docName) =
      _$GetFeeReceiptByDocNameImpl;

  String get docName;
  @JsonKey(ignore: true)
  _$$GetFeeReceiptByDocNameImplCopyWith<_$GetFeeReceiptByDocNameImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PaymentState {
  ResponseClassify<List<PaymentDashboardEntity>> get paymentDashboardResponse =>
      throw _privateConstructorUsedError;
  int? get selectedItemIndex => throw _privateConstructorUsedError;
  Set<String?>? get selectedCheckboxItems => throw _privateConstructorUsedError;
  String get totalAmount => throw _privateConstructorUsedError;
  ResponseClassify<List<PaymentDashboardEntity>> get paymentHistoryResponse =>
      throw _privateConstructorUsedError;
  ResponseClassify<OrderStatus> get paymentOrderResponse =>
      throw _privateConstructorUsedError;
  PaymentFinalAmountEntity? get paymentFinalAmountResponse =>
      throw _privateConstructorUsedError;
  String get paymentError => throw _privateConstructorUsedError;
  ResponseClassify<String> get feeRecieptResponse =>
      throw _privateConstructorUsedError;
  String get installmentId => throw _privateConstructorUsedError;
  String get shareFile => throw _privateConstructorUsedError;
  ResponseClassify<String> get feeReceiptByDocname =>
      throw _privateConstructorUsedError;
  ValueNotifier<double> get progressEvent => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentStateCopyWith<PaymentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStateCopyWith<$Res> {
  factory $PaymentStateCopyWith(
          PaymentState value, $Res Function(PaymentState) then) =
      _$PaymentStateCopyWithImpl<$Res, PaymentState>;
  @useResult
  $Res call(
      {ResponseClassify<List<PaymentDashboardEntity>> paymentDashboardResponse,
      int? selectedItemIndex,
      Set<String?>? selectedCheckboxItems,
      String totalAmount,
      ResponseClassify<List<PaymentDashboardEntity>> paymentHistoryResponse,
      ResponseClassify<OrderStatus> paymentOrderResponse,
      PaymentFinalAmountEntity? paymentFinalAmountResponse,
      String paymentError,
      ResponseClassify<String> feeRecieptResponse,
      String installmentId,
      String shareFile,
      ResponseClassify<String> feeReceiptByDocname,
      ValueNotifier<double> progressEvent});
}

/// @nodoc
class _$PaymentStateCopyWithImpl<$Res, $Val extends PaymentState>
    implements $PaymentStateCopyWith<$Res> {
  _$PaymentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentDashboardResponse = null,
    Object? selectedItemIndex = freezed,
    Object? selectedCheckboxItems = freezed,
    Object? totalAmount = null,
    Object? paymentHistoryResponse = null,
    Object? paymentOrderResponse = null,
    Object? paymentFinalAmountResponse = freezed,
    Object? paymentError = null,
    Object? feeRecieptResponse = null,
    Object? installmentId = null,
    Object? shareFile = null,
    Object? feeReceiptByDocname = null,
    Object? progressEvent = null,
  }) {
    return _then(_value.copyWith(
      paymentDashboardResponse: null == paymentDashboardResponse
          ? _value.paymentDashboardResponse
          : paymentDashboardResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<PaymentDashboardEntity>>,
      selectedItemIndex: freezed == selectedItemIndex
          ? _value.selectedItemIndex
          : selectedItemIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      selectedCheckboxItems: freezed == selectedCheckboxItems
          ? _value.selectedCheckboxItems
          : selectedCheckboxItems // ignore: cast_nullable_to_non_nullable
              as Set<String?>?,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as String,
      paymentHistoryResponse: null == paymentHistoryResponse
          ? _value.paymentHistoryResponse
          : paymentHistoryResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<PaymentDashboardEntity>>,
      paymentOrderResponse: null == paymentOrderResponse
          ? _value.paymentOrderResponse
          : paymentOrderResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<OrderStatus>,
      paymentFinalAmountResponse: freezed == paymentFinalAmountResponse
          ? _value.paymentFinalAmountResponse
          : paymentFinalAmountResponse // ignore: cast_nullable_to_non_nullable
              as PaymentFinalAmountEntity?,
      paymentError: null == paymentError
          ? _value.paymentError
          : paymentError // ignore: cast_nullable_to_non_nullable
              as String,
      feeRecieptResponse: null == feeRecieptResponse
          ? _value.feeRecieptResponse
          : feeRecieptResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<String>,
      installmentId: null == installmentId
          ? _value.installmentId
          : installmentId // ignore: cast_nullable_to_non_nullable
              as String,
      shareFile: null == shareFile
          ? _value.shareFile
          : shareFile // ignore: cast_nullable_to_non_nullable
              as String,
      feeReceiptByDocname: null == feeReceiptByDocname
          ? _value.feeReceiptByDocname
          : feeReceiptByDocname // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<String>,
      progressEvent: null == progressEvent
          ? _value.progressEvent
          : progressEvent // ignore: cast_nullable_to_non_nullable
              as ValueNotifier<double>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentStateImplCopyWith<$Res>
    implements $PaymentStateCopyWith<$Res> {
  factory _$$PaymentStateImplCopyWith(
          _$PaymentStateImpl value, $Res Function(_$PaymentStateImpl) then) =
      __$$PaymentStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ResponseClassify<List<PaymentDashboardEntity>> paymentDashboardResponse,
      int? selectedItemIndex,
      Set<String?>? selectedCheckboxItems,
      String totalAmount,
      ResponseClassify<List<PaymentDashboardEntity>> paymentHistoryResponse,
      ResponseClassify<OrderStatus> paymentOrderResponse,
      PaymentFinalAmountEntity? paymentFinalAmountResponse,
      String paymentError,
      ResponseClassify<String> feeRecieptResponse,
      String installmentId,
      String shareFile,
      ResponseClassify<String> feeReceiptByDocname,
      ValueNotifier<double> progressEvent});
}

/// @nodoc
class __$$PaymentStateImplCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$PaymentStateImpl>
    implements _$$PaymentStateImplCopyWith<$Res> {
  __$$PaymentStateImplCopyWithImpl(
      _$PaymentStateImpl _value, $Res Function(_$PaymentStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentDashboardResponse = null,
    Object? selectedItemIndex = freezed,
    Object? selectedCheckboxItems = freezed,
    Object? totalAmount = null,
    Object? paymentHistoryResponse = null,
    Object? paymentOrderResponse = null,
    Object? paymentFinalAmountResponse = freezed,
    Object? paymentError = null,
    Object? feeRecieptResponse = null,
    Object? installmentId = null,
    Object? shareFile = null,
    Object? feeReceiptByDocname = null,
    Object? progressEvent = null,
  }) {
    return _then(_$PaymentStateImpl(
      paymentDashboardResponse: null == paymentDashboardResponse
          ? _value.paymentDashboardResponse
          : paymentDashboardResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<PaymentDashboardEntity>>,
      selectedItemIndex: freezed == selectedItemIndex
          ? _value.selectedItemIndex
          : selectedItemIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      selectedCheckboxItems: freezed == selectedCheckboxItems
          ? _value._selectedCheckboxItems
          : selectedCheckboxItems // ignore: cast_nullable_to_non_nullable
              as Set<String?>?,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as String,
      paymentHistoryResponse: null == paymentHistoryResponse
          ? _value.paymentHistoryResponse
          : paymentHistoryResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<PaymentDashboardEntity>>,
      paymentOrderResponse: null == paymentOrderResponse
          ? _value.paymentOrderResponse
          : paymentOrderResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<OrderStatus>,
      paymentFinalAmountResponse: freezed == paymentFinalAmountResponse
          ? _value.paymentFinalAmountResponse
          : paymentFinalAmountResponse // ignore: cast_nullable_to_non_nullable
              as PaymentFinalAmountEntity?,
      paymentError: null == paymentError
          ? _value.paymentError
          : paymentError // ignore: cast_nullable_to_non_nullable
              as String,
      feeRecieptResponse: null == feeRecieptResponse
          ? _value.feeRecieptResponse
          : feeRecieptResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<String>,
      installmentId: null == installmentId
          ? _value.installmentId
          : installmentId // ignore: cast_nullable_to_non_nullable
              as String,
      shareFile: null == shareFile
          ? _value.shareFile
          : shareFile // ignore: cast_nullable_to_non_nullable
              as String,
      feeReceiptByDocname: null == feeReceiptByDocname
          ? _value.feeReceiptByDocname
          : feeReceiptByDocname // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<String>,
      progressEvent: null == progressEvent
          ? _value.progressEvent
          : progressEvent // ignore: cast_nullable_to_non_nullable
              as ValueNotifier<double>,
    ));
  }
}

/// @nodoc

class _$PaymentStateImpl implements _PaymentState {
  const _$PaymentStateImpl(
      {required this.paymentDashboardResponse,
      required this.selectedItemIndex,
      required final Set<String?>? selectedCheckboxItems,
      required this.totalAmount,
      required this.paymentHistoryResponse,
      required this.paymentOrderResponse,
      required this.paymentFinalAmountResponse,
      required this.paymentError,
      required this.feeRecieptResponse,
      required this.installmentId,
      required this.shareFile,
      required this.feeReceiptByDocname,
      required this.progressEvent})
      : _selectedCheckboxItems = selectedCheckboxItems;

  @override
  final ResponseClassify<List<PaymentDashboardEntity>> paymentDashboardResponse;
  @override
  final int? selectedItemIndex;
  final Set<String?>? _selectedCheckboxItems;
  @override
  Set<String?>? get selectedCheckboxItems {
    final value = _selectedCheckboxItems;
    if (value == null) return null;
    if (_selectedCheckboxItems is EqualUnmodifiableSetView)
      return _selectedCheckboxItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(value);
  }

  @override
  final String totalAmount;
  @override
  final ResponseClassify<List<PaymentDashboardEntity>> paymentHistoryResponse;
  @override
  final ResponseClassify<OrderStatus> paymentOrderResponse;
  @override
  final PaymentFinalAmountEntity? paymentFinalAmountResponse;
  @override
  final String paymentError;
  @override
  final ResponseClassify<String> feeRecieptResponse;
  @override
  final String installmentId;
  @override
  final String shareFile;
  @override
  final ResponseClassify<String> feeReceiptByDocname;
  @override
  final ValueNotifier<double> progressEvent;

  @override
  String toString() {
    return 'PaymentState(paymentDashboardResponse: $paymentDashboardResponse, selectedItemIndex: $selectedItemIndex, selectedCheckboxItems: $selectedCheckboxItems, totalAmount: $totalAmount, paymentHistoryResponse: $paymentHistoryResponse, paymentOrderResponse: $paymentOrderResponse, paymentFinalAmountResponse: $paymentFinalAmountResponse, paymentError: $paymentError, feeRecieptResponse: $feeRecieptResponse, installmentId: $installmentId, shareFile: $shareFile, feeReceiptByDocname: $feeReceiptByDocname, progressEvent: $progressEvent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentStateImpl &&
            (identical(
                    other.paymentDashboardResponse, paymentDashboardResponse) ||
                other.paymentDashboardResponse == paymentDashboardResponse) &&
            (identical(other.selectedItemIndex, selectedItemIndex) ||
                other.selectedItemIndex == selectedItemIndex) &&
            const DeepCollectionEquality()
                .equals(other._selectedCheckboxItems, _selectedCheckboxItems) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.paymentHistoryResponse, paymentHistoryResponse) ||
                other.paymentHistoryResponse == paymentHistoryResponse) &&
            (identical(other.paymentOrderResponse, paymentOrderResponse) ||
                other.paymentOrderResponse == paymentOrderResponse) &&
            (identical(other.paymentFinalAmountResponse,
                    paymentFinalAmountResponse) ||
                other.paymentFinalAmountResponse ==
                    paymentFinalAmountResponse) &&
            (identical(other.paymentError, paymentError) ||
                other.paymentError == paymentError) &&
            (identical(other.feeRecieptResponse, feeRecieptResponse) ||
                other.feeRecieptResponse == feeRecieptResponse) &&
            (identical(other.installmentId, installmentId) ||
                other.installmentId == installmentId) &&
            (identical(other.shareFile, shareFile) ||
                other.shareFile == shareFile) &&
            (identical(other.feeReceiptByDocname, feeReceiptByDocname) ||
                other.feeReceiptByDocname == feeReceiptByDocname) &&
            (identical(other.progressEvent, progressEvent) ||
                other.progressEvent == progressEvent));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      paymentDashboardResponse,
      selectedItemIndex,
      const DeepCollectionEquality().hash(_selectedCheckboxItems),
      totalAmount,
      paymentHistoryResponse,
      paymentOrderResponse,
      paymentFinalAmountResponse,
      paymentError,
      feeRecieptResponse,
      installmentId,
      shareFile,
      feeReceiptByDocname,
      progressEvent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentStateImplCopyWith<_$PaymentStateImpl> get copyWith =>
      __$$PaymentStateImplCopyWithImpl<_$PaymentStateImpl>(this, _$identity);
}

abstract class _PaymentState implements PaymentState {
  const factory _PaymentState(
      {required final ResponseClassify<List<PaymentDashboardEntity>>
          paymentDashboardResponse,
      required final int? selectedItemIndex,
      required final Set<String?>? selectedCheckboxItems,
      required final String totalAmount,
      required final ResponseClassify<List<PaymentDashboardEntity>>
          paymentHistoryResponse,
      required final ResponseClassify<OrderStatus> paymentOrderResponse,
      required final PaymentFinalAmountEntity? paymentFinalAmountResponse,
      required final String paymentError,
      required final ResponseClassify<String> feeRecieptResponse,
      required final String installmentId,
      required final String shareFile,
      required final ResponseClassify<String> feeReceiptByDocname,
      required final ValueNotifier<double> progressEvent}) = _$PaymentStateImpl;

  @override
  ResponseClassify<List<PaymentDashboardEntity>> get paymentDashboardResponse;
  @override
  int? get selectedItemIndex;
  @override
  Set<String?>? get selectedCheckboxItems;
  @override
  String get totalAmount;
  @override
  ResponseClassify<List<PaymentDashboardEntity>> get paymentHistoryResponse;
  @override
  ResponseClassify<OrderStatus> get paymentOrderResponse;
  @override
  PaymentFinalAmountEntity? get paymentFinalAmountResponse;
  @override
  String get paymentError;
  @override
  ResponseClassify<String> get feeRecieptResponse;
  @override
  String get installmentId;
  @override
  String get shareFile;
  @override
  ResponseClassify<String> get feeReceiptByDocname;
  @override
  ValueNotifier<double> get progressEvent;
  @override
  @JsonKey(ignore: true)
  _$$PaymentStateImplCopyWith<_$PaymentStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
