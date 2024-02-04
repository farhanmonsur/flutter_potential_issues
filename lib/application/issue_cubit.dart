import 'package:bloc/bloc.dart';
import 'package:flutter_potential_issues/domain/entities/common/failure.dart';
import 'package:flutter_potential_issues/domain/entities/issue/issue.dart';
import 'package:flutter_potential_issues/domain/interfaces/i_issue_provider.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'issue_state.dart';
part 'issue_cubit.freezed.dart';

@injectable
class IssueCubit extends Cubit<IssueState> {
  IssueCubit(this._issueProvider) : super(IssueState.initial());

  final IIssueProvider _issueProvider;

  int page = 1;
  int labelPage = 1;

  Future<void> fetchIssues() async {
    List<Issue> issues = [];
    issues.addAll(state.issues);
    emit(state.copyWith(loading: true));
    final issueListOption =
        await _issueProvider.getIssues(page: page++);

    issueListOption.fold(
      (failure) => emit(
        state.copyWith(loading: false, issuesFailure: failure),
      ),
      (issueList) {
        issues.addAll(issueList);
        emit(
          state.copyWith(loading: false, issues: issues),
        );
      },
    );
  }

  Future<void> searchIssuesByLabel(String labelQuery) async {
    List<Issue> issues = [];
    if (labelPage == 1) {
      emit(state.copyWith(issues: []));
    }
    issues.addAll(state.issues);
    emit(state.copyWith(loading: true, labelQuery: labelQuery));
    final issueListOption =
        await _issueProvider.getIssuesByLabel(labelQuery, page: labelPage++);

    issueListOption.fold(
      (failure) => emit(
        state.copyWith(loading: false, issuesFailure: failure),
      ),
      (issueList) {
        issues.addAll(issueList);
        emit(
          state.copyWith(loading: false, issues: issues),
        );
      },
    );
  }

  void clearLabelQuery() {
    emit(state.copyWith(issues: [], labelQuery: null));
  }
}
