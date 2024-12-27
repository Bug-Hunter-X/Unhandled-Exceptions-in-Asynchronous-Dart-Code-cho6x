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
    // Here's where the uncommon error handling might be needed
    rethrow; // Re-throw to allow higher-level error handling
  }
}
```