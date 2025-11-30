class CategoryModel {
  String id;
  String image;
  String title;

  CategoryModel({required this.id, required this.title, required this.image});
  static List<CategoryModel> createCategoryList(){
    return [
      CategoryModel(id: "general", title: "General", image: "assets/images/general.png"),
      CategoryModel(id: "business", title: "Business", image: "assets/images/busniess.png"),
      CategoryModel(id: "entertainment", title: "Entertainment", image: "assets/images/entertainment.png"),
      CategoryModel(id: "health", title: "Health", image: "assets/images/helth.png"),
      CategoryModel(id: "science", title: "Science", image: "assets/images/science.png"),
      CategoryModel(id: "technology", title: "Technology", image: "assets/images/technology.png"),
      CategoryModel(id: "sports", title: "Sports", image: "assets/images/sport.png"),
    ];
  }
}
