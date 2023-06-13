import 'package:rooheman/models/client_model.dart';

class ClientViewModel {
  final ClientModel? _clientModel;
  ClientViewModel(this._clientModel);

  get id => _clientModel?.id;
  get code => _clientModel?.matchMakerCode;
  PersonalInformationViewModel get personalInformation =>
      PersonalInformationViewModel(_clientModel?.personalInformation);
  EducationDetailsViewModel get educationDetails =>
      EducationDetailsViewModel(_clientModel?.educationDetails);
  JobDetailsViewModel get jobDetails =>
      JobDetailsViewModel(_clientModel?.jobDetails);
  ReligionDetailsViewModel get religionDetails =>
      ReligionDetailsViewModel(_clientModel!.religionDetails);
  PropertyDetailsViewModel get propertyDetails =>
      PropertyDetailsViewModel(_clientModel?.propertyDetails);
  FamilyDetailsViewModel get familyDetails =>
      FamilyDetailsViewModel(_clientModel?.familyDetails);
  AddressViewModel get address => AddressViewModel(_clientModel?.address);
  YourRequirementsViewModel get yourRequirements =>
      YourRequirementsViewModel(_clientModel?.yourRequirements);
}

class PersonalInformationViewModel {
  final PersonalInformation? _personalInformation;
  PersonalInformationViewModel(this._personalInformation);
  get gender => _personalInformation?.gender!;
  get name => _personalInformation?.name ?? "---";
  get age => _personalInformation?.age!;
  get maritalStatus => _personalInformation?.maritalStatus!;
  get divorcedReason => _personalInformation?.divorcedReason ?? "---";
  get height => _personalInformation?.height!;
  get images => _personalInformation?.images![0];
}

class EducationDetailsViewModel {
  final EducationDetails? _educationDetails;

  EducationDetailsViewModel(this._educationDetails);
  get qualification => _educationDetails?.qualification ?? "---";
}

class JobDetailsViewModel {
  final JobDetails? _jobDetails;
  JobDetailsViewModel(this._jobDetails);
  get natureOfJob => _jobDetails?.natureOfJob ?? "---";
  get income => _jobDetails?.income ?? "---";
}

class ReligionDetailsViewModel {
  final ReligionDetails? _religionDetails;
  ReligionDetailsViewModel(this._religionDetails);
  get religion => _religionDetails?.religion!;
  get caste => _religionDetails?.caste ?? "---";
  get section => _religionDetails?.section ?? "---";
}

class PropertyDetailsViewModel {
  final PropertyDetails? _propertyDetails;
  PropertyDetailsViewModel(this._propertyDetails);
  get homeOwnOnRent => _propertyDetails?.homeOwnOnRent ?? "---";
  SizeViewModel get size => SizeViewModel(_propertyDetails?.size);
  get location => _propertyDetails?.location ?? "---";
  get otherPropertiesIfAny => _propertyDetails?.otherPropertiesIfAny ?? "---";
}

class SizeViewModel {
  final Size? _size;
  SizeViewModel(this._size);
  get unit => _size?.unit ?? "---";
  get value => _size?.value ?? "---";
}

class FamilyDetailsViewModel {
  final FamilyDetails? _familyDetails;
  FamilyDetailsViewModel(this._familyDetails);
  get fatherOccupation => _familyDetails?.fatherOccupation ?? "---";
  get motherOccupation => _familyDetails?.motherOccupation ?? "---";
  get siblings => _familyDetails?.siblings ?? "---";
  get married => _familyDetails?.married ?? "---";
}

class AddressViewModel {
  final Address? _address;
  AddressViewModel(this._address);
  get currentCity => _address?.currentCity ?? "---";
  get homeTown => _address?.homeTown ?? "---";
  get homeTownLocation => _address?.homeTownLocation ?? "---";
}

class YourRequirementsViewModel {
  final YourRequirements? _yourRequirements;
  YourRequirementsViewModel(this._yourRequirements);
  get ageLimit => _yourRequirements?.ageLimit ?? "---";
  get height => _yourRequirements?.height ?? "---";
  get city => _yourRequirements?.city ?? "---";
  get caste => _yourRequirements?.caste ?? "---";
  get qualification => _yourRequirements?.qualification ?? "---";
  get anyOtherDemand => _yourRequirements?.anyOtherDemand ?? "---";
}
