// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'issue_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$IssueState {
  bool get loading => throw _privateConstructorUsedError;
  List<Issue> get issues => throw _privateConstructorUsedError;
  String? get labelQuery => throw _privateConstructorUsedError;
  Failure get issuesFailure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IssueStateCopyWith<IssueState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IssueStateCopyWith<$Res> {
  factory $IssueStateCopyWith(
          IssueState value, $Res Function(IssueState) then) =
      _$IssueStateCopyWithImpl<$Res, IssueState>;
  @useResult
  $Res call(
      {bool loading,
      List<Issue> issues,
      String? labelQuery,
      Failure issuesFailure});

  $FailureCopyWith<$Res> get issuesFailure;
}

/// @nodoc
class _$IssueStateCopyWithImpl<$Res, $Val extends IssueState>
    implements $IssueStateCopyWith<$Res> {
  _$IssueStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? issues = null,
    Object? labelQuery = freezed,
    Object? issuesFailure = null,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      issues: null == issues
          ? _value.issues
          : issues // ignore: cast_nullable_to_non_nullable
              as List<Issue>,
      labelQuery: freezed == labelQuery
          ? _value.labelQuery
          : labelQuery // ignore: cast_nullable_to_non_nullable
              as String?,
      issuesFailure: null == issuesFailure
          ? _value.issuesFailure
          : issuesFailure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res> get issuesFailure {
    return $FailureCopyWith<$Res>(_value.issuesFailure, (value) {
      return _then(_value.copyWith(issuesFailure: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$IssueStateImplCopyWith<$Res>
    implements $IssueStateCopyWith<$Res> {
  factory _$$IssueStateImplCopyWith(
          _$IssueStateImpl value, $Res Function(_$IssueStateImpl) then) =
      __$$IssueStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      List<Issue> issues,
      String? labelQuery,
      Failure issuesFailure});

  @override
  $FailureCopyWith<$Res> get issuesFailure;
}

/// @nodoc
class __$$IssueStateImplCopyWithImpl<$Res>
    extends _$IssueStateCopyWithImpl<$Res, _$IssueStateImpl>
    implements _$$IssueStateImplCopyWith<$Res> {
  __$$IssueStateImplCopyWithImpl(
      _$IssueStateImpl _value, $Res Function(_$IssueStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? issues = null,
    Object? labelQuery = freezed,
    Object? issuesFailure = null,
  }) {
    return _then(_$IssueStateImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      issues: null == issues
          ? _value._issues
          : issues // ignore: cast_nullable_to_non_nullable
              as List<Issue>,
      labelQuery: freezed == labelQuery
          ? _value.labelQuery
          : labelQuery // ignore: cast_nullable_to_non_nullable
              as String?,
      issuesFailure: null == issuesFailure
          ? _value.issuesFailure
          : issuesFailure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$IssueStateImpl implements _IssueState {
  const _$IssueStateImpl(
      {required this.loading,
      required final List<Issue> issues,
      this.labelQuery,
      required this.issuesFailure})
      : _issues = issues;

  @override
  final bool loading;
  final List<Issue> _issues;
  @override
  List<Issue> get issues {
    if (_issues is EqualUnmodifiableListView) return _issues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_issues);
  }

  @override
  final String? labelQuery;
  @override
  final Failure issuesFailure;

  @override
  String toString() {
    return 'IssueState(loading: $loading, issues: $issues, labelQuery: $labelQuery, issuesFailure: $issuesFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IssueStateImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            const DeepCollectionEquality().equals(other._issues, _issues) &&
            (identical(other.labelQuery, labelQuery) ||
                other.labelQuery == labelQuery) &&
            (identical(other.issuesFailure, issuesFailure) ||
                other.issuesFailure == issuesFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading,
      const DeepCollectionEquality().hash(_issues), labelQuery, issuesFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IssueStateImplCopyWith<_$IssueStateImpl> get copyWith =>
      __$$IssueStateImplCopyWithImpl<_$IssueStateImpl>(this, _$identity);
}

abstract class _IssueState implements IssueState {
  const factory _IssueState(
      {required final bool loading,
      required final List<Issue> issues,
      final String? labelQuery,
      required final Failure issuesFailure}) = _$IssueStateImpl;

  @override
  bool get loading;
  @override
  List<Issue> get issues;
  @override
  String? get labelQuery;
  @override
  Failure get issuesFailure;
  @override
  @JsonKey(ignore: true)
  _$$IssueStateImplCopyWith<_$IssueStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
