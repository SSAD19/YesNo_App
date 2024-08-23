class YesNoModel {

  String answer;
  bool forced;
  String image; 

  YesNoModel({
    required this.answer,
    required this.forced,
    required this.image
  });


    factory YesNoModel.fromJson(Map<String, dynamic> json) => YesNoModel(
        answer: json["answer"],
        image: json["image"],
        forced: json["forced"]
    );

    

}