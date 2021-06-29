// Show Subcategories
  List<SubCategoryModel> parseOutWork(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed
        .map<SubCategoryModel>((json) => SubCategoryModel.fromJson(json))
        .toList();
  }

  //fetch Category
  Future<List<SubCategoryModel>> fetchCategory() async {
    // final queryParams = {
    //   'id': categoryId.toString(),
    // };
    final response = await http.get(Uri.parse('${api.subCategoryApi}$id'));

    if (response.statusCode == 200) {
      //parseOutWork method will return us the desired list value, then we can call this fetchCategory
      //method to our Ui to use the data
      return parseOutWork(response.body);
    } else {
      throw Exception('Failed to load album');
    }
  }
