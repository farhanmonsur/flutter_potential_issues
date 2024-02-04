import 'package:flutter/material.dart';
import 'package:flutter_potential_issues/domain/entities/issue/issue.dart';

class IssueCard extends StatelessWidget {
  final Issue issue;

  const IssueCard({Key? key, required this.issue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    issue.title,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    issue.body != null ? 
                    issue.body!.split('\n').first : '',
                    style: TextStyle(fontSize: 14.0),
                  ),
                  const SizedBox(height: 8.0),
                  Wrap(
                    spacing: 8.0,
                    children: issue.labels.map((label) => LabelChip(label: label)).toList(),
                  ),
                ],
              ),
            ),
            SizedBox(width: 16.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '${issue.createdAt.day}/${issue.createdAt.month}/${issue.createdAt.year}',
                  style: TextStyle(fontSize: 14.0),
                ),
                SizedBox(height: 4.0),
                Text(
                  'By ${issue.user.login}',
                  style: TextStyle(fontSize: 14.0),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class LabelChip extends StatelessWidget {
  final Label label;

  const LabelChip({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label.name),
    );
  }
}
