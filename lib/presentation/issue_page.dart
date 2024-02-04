import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_potential_issues/application/issue_cubit.dart';
import 'package:flutter_potential_issues/presentation/components/issue_list_widget.dart';

class IssuePage extends StatelessWidget {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Potential Issues'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: BlocBuilder<IssueCubit, IssueState>(
                    builder: (context, state) {
                      return TextField(
                        controller: _searchController,
                        onSubmitted: (value) {
                          final labelQuery = _searchController.text;
                          context
                              .read<IssueCubit>()
                              .searchIssuesByLabel(labelQuery);
                          _searchController.clear();
                          // Dismiss the keyboard
                          FocusScope.of(context).unfocus();
                        },
                        decoration: InputDecoration(
                          labelText: state.labelQuery,
                          border: const OutlineInputBorder(),
                          hintText: 'Search by label',
                        ),
                      );
                    },
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () {
                    context.read<IssueCubit>().clearLabelQuery();
                    // Clear the search results
                    context.read<IssueCubit>().fetchIssues();
                  },
                ),
              ],
            ),
          ),
          const Expanded(
            child: IssueListWidget(),
          ),
        ],
      ),
    );
  }
}
