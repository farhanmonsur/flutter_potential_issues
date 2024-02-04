import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_potential_issues/domain/entities/common/failure.dart';
import 'package:flutter_potential_issues/domain/entities/issue/issue.dart';
import 'package:flutter_potential_issues/domain/interfaces/i_issue_provider.dart';
import 'package:flutter_potential_issues/infrastructure/utils/logger.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton(as: IIssueProvider)
class IssueProvider implements IIssueProvider {
  @override
  Future<Either<Failure, List<Issue>>> getIssues(
      {int perPage = 6, int page = 1}) async {
    try {
      final response = await http.get(
        Uri.parse(
            'https://api.github.com/repos/flutter/flutter/issues?per_page=$perPage&page=$page'),
      );

      logger.d('${response.body}, response body');

      if (response.statusCode == 200) {
        final List<dynamic> issuesJson = jsonDecode(response.body);
        final List<Issue> issues =
            issuesJson.map((issue) => Issue.fromJson(issue)).toList();
        return right(issues);
      } else {
        logger.e(
            'Failed to fetch issues. Status code: ${response.statusCode}, Body: ${response.body}');
        return left(Failure(
            message: 'Failed to fetch issues', errorCode: response.statusCode));
      }
    } catch (e) {
      logger.e('Error during API call: $e, EndPoint: GET');
      return left(Failure(message: 'Something went wrong', errorCode: 69));
    }
  }

  @override
  Future<Either<Failure, List<Issue>>> getIssuesByLabel(String labelQuery,
      {int perPage = 6, int page = 1}) async {
    try {
      final url =
          'https://api.github.com/repos/flutter/flutter/issues?labels=$labelQuery&per_page=$perPage&page=$page';
      logger.d('url: $url');
      final response = await http.get(
        Uri.parse(url),
      );

      logger.d('${response.body}, response body');

      if (response.statusCode == 200) {
        final List<dynamic> issuesJson = jsonDecode(response.body);
        final List<Issue> issues =
            issuesJson.map((issue) => Issue.fromJson(issue)).toList();
        return right(issues);
      } else {
        logger.e(
            'Failed to fetch issues. Status code: ${response.statusCode}, Body: ${response.body}');
        return left(Failure(
            message: 'Failed to fetch issues', errorCode: response.statusCode));
      }
    } catch (e) {
      logger.e('Error during API call: $e, EndPoint: GET');
      return left(Failure(message: 'Something went wrong', errorCode: 69));
    }
  }
}
