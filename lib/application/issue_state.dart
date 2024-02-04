part of 'issue_cubit.dart';

@freezed
class IssueState with _$IssueState {
  const factory IssueState({
    required bool loading,
    required List<Issue> issues,
    String? labelQuery,
    required Failure issuesFailure,
  }) = _IssueState;

  factory IssueState.initial() => IssueState(
        loading: true,
        issues: [],
        issuesFailure: Failure.none(),
      );
}
