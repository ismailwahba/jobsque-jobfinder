class SuggestedModel {
  bool? status;
  List<Data>? dataJobs=[];

  SuggestedModel({this.status, this.dataJobs});

  SuggestedModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
            

    if (json['data'] != null) {
      json['data'].forEach((data) {
        dataJobs!.add(Data.fromJson(data));
      });
    }
  }
}

class Data {
  int? id;
  String? name;
  String? image;
  String? jobTimeType;
  String? jobType;
  String? jobLevel;
  String? jobDescription;
  String? jobSkill;
  String? compName;
  String? compEmail;
  String? compWebsite;
  String? aboutComp;
  String? location;
  String? salary;
  int? favorites;
  int? expired;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.id,
      this.name,
      this.image,
      this.jobTimeType,
      this.jobType,
      this.jobLevel,
      this.jobDescription,
      this.jobSkill,
      this.compName,
      this.compEmail,
      this.compWebsite,
      this.aboutComp,
      this.location,
      this.salary,
      this.favorites,
      this.expired,
      this.createdAt,
      this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    jobTimeType = json['job_time_type'];
    jobType = json['job_type'];
    jobLevel = json['job_level'];
    jobDescription = json['job_description'];
    jobSkill = json['job_skill'];
    compName = json['comp_name'];
    compEmail = json['comp_email'];
    compWebsite = json['comp_website'];
    aboutComp = json['about_comp'];
    location = json['location'];
    salary = json['salary'];
    favorites = json['favorites'];
    expired = json['expired'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
}
