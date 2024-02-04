import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_potential_issues/application/issue_cubit.dart';
import 'package:flutter_potential_issues/presentation/components/issue_card.dart';

class IssueListWidget extends StatelessWidget {
  const IssueListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IssueCubit, IssueState>(
      builder: (context, state) {
        return NotificationListener<ScrollNotification>(
          onNotification: (notification) {
            if (notification is ScrollEndNotification &&
                notification.metrics.pixels >=
                    notification.metrics.maxScrollExtent) {
              // User has scrolled to the end, trigger fetchIssues
              if(state.labelQuery != null){
                context.read<IssueCubit>().searchIssuesByLabel(state.labelQuery!);
              } else {
                context.read<IssueCubit>().fetchIssues();
              }
              
            }
            return true;
          },
          child: ListView.builder(
            itemCount: state.issues.length + 1,
            itemBuilder: (context, index) {
              if (index == state.issues.length && state.loading) {
                return const Center(child: CircularProgressIndicator());
              } else if (index == state.issues.length && !state.loading) {
                return const SizedBox(
                  height: 100,
                );
              }
              return IssueCard(issue: state.issues[index]);
            },
          ),
        );
      },
    );
  }
}
