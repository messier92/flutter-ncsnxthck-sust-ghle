import 'package:flutter/material.dart';
import 'package:flutter_polls/flutter_polls.dart';

List polls() => [
      {
        'id': 1,
        'question': 'What kind of snacks do you eat regularly?',
        'end_date': DateTime(2022, 5, 21),
        'options': [
          {
            'id': 1,
            'title': 'Biscuits & cookies',
            'votes': 40,
          },
          {
            'id': 2,
            'title': 'Fruits & nuts',
            'votes': 20,
          },
          {
            'id': 3,
            'title': 'Chips & crisps',
            'votes': 10,
          },
        ],
      },
      {
        'id': 2,
        'question': 'Would you subscribe to a monthly snack pack?',
        'end_date': DateTime(2022, 12, 25),
        'options': [
          {
            'id': 1,
            'title': 'Yes, definitely',
            'votes': 40,
          },
          {
            'id': 2,
            'title': 'No, I do not think so',
            'votes': 0,
          },
          {
            'id': 3,
            'title': 'I do not have a preference',
            'votes': 10,
          },
        ],
      },
    ];

class ExamplePolls extends StatefulWidget {
  const ExamplePolls({Key? key}) : super(key: key);

  @override
  State<ExamplePolls> createState() => _ExamplePollsState();
}

class _ExamplePollsState extends State<ExamplePolls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(5),
        child: ListView.builder(
          itemCount: polls().length,
          itemBuilder: (BuildContext context, int index) {
            final Map<String, dynamic> poll = polls()[index];

            final int days = DateTime(
              poll['end_date'].year,
              poll['end_date'].month,
              poll['end_date'].day,
            )
                .difference(DateTime(
                  DateTime.now().year,
                  DateTime.now().month,
                  DateTime.now().day,
                ))
                .inDays;

            return Container(
              margin: const EdgeInsets.only(bottom: 5),
              child: FlutterPolls(
                pollId: poll['id'].toString(),
                // hasVoted: hasVoted.value,
                // userVotedOptionId: userVotedOptionId.value,
                onVoted: (PollOption pollOption, int newTotalVotes) async {
                  await Future.delayed(const Duration(seconds: 2));

                  /// If HTTP status is success, return true else false
                  return true;
                },
                pollEnded: days < 0,
                pollTitle: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    poll['question'],
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                pollOptions: List<PollOption>.from(
                  poll['options'].map(
                    (option) {
                      var a = PollOption(
                        id: option['id'],
                        title: Text(
                          option['title'],
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        votes: option['votes'],
                      );
                      return a;
                    },
                  ),
                ),
                votedPercentageTextStyle: const TextStyle(
                  fontSize: 7,
                  fontWeight: FontWeight.w600,
                ),
                metaWidget: Row(
                  children: [
                    const SizedBox(width: 6),
                    const Text(
                      '•',
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      days < 0 ? "ended" : "ends $days days",
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
