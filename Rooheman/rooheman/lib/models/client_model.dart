class ClientModel {
  int? id;
  int? matchMakerCode;
  PersonalInformation? personalInformation;
  EducationDetails? educationDetails;
  JobDetails? jobDetails;
  ReligionDetails? religionDetails;
  PropertyDetails? propertyDetails;
  FamilyDetails? familyDetails;
  Address? address;
  YourRequirements? yourRequirements;

  ClientModel(
      {id,
      code,
      personalInformation,
      educationDetails,
      jobDetails,
      religionDetails,
      propertyDetails,
      familyDetails,
      address,
      yourRequirements});

  ClientModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    matchMakerCode = json['code'];
    personalInformation = json['personal_information'] != null
        ? PersonalInformation.fromJson(json['personal_information'])
        : null;
    educationDetails = json['education_details'] != null
        ? EducationDetails.fromJson(json['education_details'])
        : null;
    jobDetails = json['job_details'] != null
        ? JobDetails.fromJson(json['job_details'])
        : null;
    religionDetails = json['religion_details'] != null
        ? ReligionDetails.fromJson(json['religion_details'])
        : null;
    propertyDetails = json['property_details'] != null
        ? PropertyDetails.fromJson(json['property_details'])
        : null;
    familyDetails = json['family_details'] != null
        ? FamilyDetails.fromJson(json['family_details'])
        : null;
    address =
        json['address'] != null ? Address.fromJson(json['address']) : null;
    yourRequirements = json['your_requirements'] != null
        ? YourRequirements.fromJson(json['your_requirements'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['code'] = matchMakerCode;
    if (personalInformation != null) {
      data['personal_information'] = personalInformation!.toJson();
    }
    if (educationDetails != null) {
      data['education_details'] = educationDetails!.toJson();
    }
    if (jobDetails != null) {
      data['job_details'] = jobDetails!.toJson();
    }
    if (religionDetails != null) {
      data['religion_details'] = religionDetails!.toJson();
    }
    if (propertyDetails != null) {
      data['property_details'] = propertyDetails!.toJson();
    }
    if (familyDetails != null) {
      data['family_details'] = familyDetails!.toJson();
    }
    if (address != null) {
      data['address'] = address!.toJson();
    }
    if (yourRequirements != null) {
      data['your_requirements'] = yourRequirements!.toJson();
    }
    return data;
  }
}

class PersonalInformation {
  String? gender;
  String? name;
  int? age;
  String? maritalStatus;
  String? divorcedReason;
  double? height;
  List<String>? images;

  PersonalInformation(
      {gender, name, age, maritalStatus, divorcedReason, height, images});

  PersonalInformation.fromJson(Map<String, dynamic> json) {
    gender = json['gender'];
    name = json['name'];
    age = json['age'];
    maritalStatus = json['marital_status'];
    divorcedReason = json['divorced_reason'];
    height = json['height'];
    images = json['images'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['gender'] = gender;
    data['name'] = name;
    data['age'] = age;
    data['marital_status'] = maritalStatus;
    data['divorced_reason'] = divorcedReason;
    data['height'] = height;
    data['images'] = images;
    return data;
  }
}

class EducationDetails {
  String? qualification;

  EducationDetails({qualification});

  EducationDetails.fromJson(Map<String, dynamic> json) {
    qualification = json['qualification'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['qualification'] = qualification;
    return data;
  }
}

class JobDetails {
  String? natureOfJob;
  int? income;

  JobDetails({natureOfJob, income});

  JobDetails.fromJson(Map<String, dynamic> json) {
    natureOfJob = json['nature_of_Job'];
    income = json['income'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['nature_of_Job'] = natureOfJob;
    data['income'] = income;
    return data;
  }
}

class ReligionDetails {
  String? religion;
  String? caste;
  String? section;

  ReligionDetails({religion, caste, sect});

  ReligionDetails.fromJson(Map<String, dynamic> json) {
    religion = json['religion'];
    caste = json['caste'];
    section = json['section'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['religion'] = religion;
    data['caste'] = caste;
    data['section'] = section;
    return data;
  }
}

class PropertyDetails {
  String? homeOwnOnRent;
  Size? size;
  String? location;
  String? otherPropertiesIfAny;

  PropertyDetails({homeOwnOnRent, size, location, otherPropertiesIfAny});

  PropertyDetails.fromJson(Map<String, dynamic> json) {
    homeOwnOnRent = json['home_own_on_rent'];
    size = json['size'] != null ? Size.fromJson(json['size']) : null;
    location = json['location'];
    otherPropertiesIfAny = json['other_properties_if_any'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['home_own_on_rent'] = homeOwnOnRent;
    if (size != null) {
      data['size'] = size!.toJson();
    }
    data['location'] = location;
    data['other_properties_if_any'] = otherPropertiesIfAny;
    return data;
  }
}

class Size {
  String? unit;
  double? value;

  Size({unit, value});

  Size.fromJson(Map<String, dynamic> json) {
    unit = json['unit'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['unit'] = unit;
    data['value'] = value;
    return data;
  }
}

class FamilyDetails {
  String? fatherOccupation;
  String? motherOccupation;
  int? siblings;
  int? married;

  FamilyDetails({fatherOccupation, motherOccupation, siblings, married});

  FamilyDetails.fromJson(Map<String, dynamic> json) {
    fatherOccupation = json['father_occupation'];
    motherOccupation = json['mother_occupation'];
    siblings = json['siblings'];
    married = json['married'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['father_occupation'] = fatherOccupation;
    data['mother_occupation'] = motherOccupation;
    data['siblings'] = siblings;
    data['married'] = married;
    return data;
  }
}

class Address {
  String? currentCity;
  String? homeTown;
  String? homeTownLocation;

  Address({currentCity, homeTown, homeTownLocation});

  Address.fromJson(Map<String, dynamic> json) {
    currentCity = json['current_city'];
    homeTown = json['home_town'];
    homeTownLocation = json['home_town_location'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['current_city'] = currentCity;
    data['home_town'] = homeTown;
    data['home_town_location'] = homeTownLocation;
    return data;
  }
}

class YourRequirements {
  int? ageLimit;
  String? height;
  String? city;
  String? caste;
  String? qualification;
  String? anyOtherDemand;

  YourRequirements(
      {ageLimit, height, city, caste, qualification, anyOtherDemand});

  YourRequirements.fromJson(Map<String, dynamic> json) {
    ageLimit = json['age_limit'];
    height = json['height'];
    city = json['city'];
    caste = json['caste'];
    qualification = json['qualification'];
    anyOtherDemand = json['any_other_demand'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['age_limit'] = ageLimit;
    data['height'] = height;
    data['city'] = city;
    data['caste'] = caste;
    data['qualification'] = qualification;
    data['any_other_demand'] = anyOtherDemand;
    return data;
  }
}
