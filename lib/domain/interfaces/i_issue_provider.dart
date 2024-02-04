import 'package:dartz/dartz.dart';
import 'package:flutter_potential_issues/domain/entities/common/failure.dart';
import 'package:flutter_potential_issues/domain/entities/issue/issue.dart';

abstract class IIssueProvider {
  Future<Either<Failure, List<Issue>>> getIssues({int perPage = 6, int page = 1});
  Future<Either<Failure, List<Issue>>> getIssuesByLabel(String labelQuery, {int perPage = 6, int page = 1});
}
