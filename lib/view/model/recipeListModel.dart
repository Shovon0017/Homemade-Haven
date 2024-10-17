class RecipeListModel {
  List<Recipes>? recipes;

  RecipeListModel({this.recipes});

  RecipeListModel.fromJson(Map<String, dynamic> json) {
    if (json['recipes'] != null) {
      recipes = <Recipes>[];
      json['recipes'].forEach((v) {
        recipes!.add(new Recipes.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.recipes != null) {
      data['recipes'] = this.recipes!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Recipes {
  int? id;
  String? title;
  String? country;
  String? image;
  List<String>? ingredients;
  List<String>? instructions;
  String? prepTime;
  String? cookTime;
  int? servings;

  Recipes(
      {this.id,
        this.title,
        this.country,
        this.image,
        this.ingredients,
        this.instructions,
        this.prepTime,
        this.cookTime,
        this.servings});

  Recipes.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    country = json['country'];
    image = json['image'];
    ingredients = json['ingredients'].cast<String>();
    instructions = json['instructions'].cast<String>();
    prepTime = json['prepTime'];
    cookTime = json['cookTime'];
    servings = json['servings'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['country'] = this.country;
    data['image'] = this.image;
    data['ingredients'] = this.ingredients;
    data['instructions'] = this.instructions;
    data['prepTime'] = this.prepTime;
    data['cookTime'] = this.cookTime;
    data['servings'] = this.servings;
    return data;
  }
}
