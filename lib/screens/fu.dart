import 'package:flutter/material.dart';
Future<Map<String, dynamic>> mockFetchData() async {
  await Future.delayed(Duration(seconds: 2)); // Simulate network delay
  return {
    'id': 1,
    'title': 'Mocked post',
    'body': 'This is a mock fetch response',
  };
}




class FetchDataWidget extends StatelessWidget {
  const FetchDataWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Map<String, dynamic>>(
      future: mockFetchData(), // Use the mock fetch function here
      builder: (context, snapshot) {
        // Check the state of the Future
        if (snapshot.connectionState == ConnectionState.waiting) {
          // While waiting for data, show a loading spinner
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          // If there was an error, display an error message
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (snapshot.hasData) {
          // When the data is available, display it
          final data = snapshot.data!;
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('ID: ${data['id']}'),
                Text('Title: ${data['title']}'),
                Text('Body: ${data['body']}'),
              ],
            ),
          );
        } else {
          // If there's no data, display a message (edge case)
          return Center(child: Text('No data available'));
        }
      },
    );
  }
}
