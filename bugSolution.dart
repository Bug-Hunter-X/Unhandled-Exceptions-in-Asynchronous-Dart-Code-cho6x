```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      // Successfully fetched data
      final jsonData = jsonDecode(response.body);
      // Process jsonData
    } else {
      // Handle error: non-200 status code
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle other errors like network issues
    print('Error fetching data: $e');
    rethrow; // Re-throw to allow higher-level error handling
  }
}

void main() async {
  try {
    await fetchData();
    print('Data fetched successfully!');
  } catch (e) {
    // Handle exceptions that were re-thrown from fetchData()
    print('A major error occurred: $e');
  }
}
```