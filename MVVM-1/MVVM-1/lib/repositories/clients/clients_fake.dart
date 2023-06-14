import 'package:rooheman/models/client_model.dart';
import 'client_repository.dart';

class ClientFakeData extends ClientsRepository {
  List fakeClientJsonList = [
    {
      "id": 1,
      "code": 120,
      "personal_information": {
        "gender": "male",
        "name": "muhammad muzamal",
        "age": 27,
        "marital_status": "single",
        "divorced_reason": "nill",
        "height": 5.6,
        "images": ["https://source.unsplash.com/500x150/?cars"]
      },
      "education_details": {"qualification": "bscs"},
      "job_details": {"nature_of_Job": "freelancer", "income": 500},
      "religion_details": {
        "religion": "islam",
        "caste": "awan",
        "sect": "sunni"
      },
      "property_details": {
        "home_own_on_rent": "rent",
        "size": {"unit": "malra", "value": 1.5},
        "location": "islamabad",
        "other_properties_if_any": "ploat"
      },
      "family_details": {
        "father_occupation": "gov job",
        "mother_occupation": "house wife",
        "siblings": 0,
        "married": 0
      },
      "address": {
        "current_city": "islamabad",
        "home_town": "muhar klan",
        "home_town_location": "abbottabad"
      },
      "your_requirements": {
        "age_limit": 50,
        "height": "any",
        "city": "any",
        "caste": "any",
        "qualification": "any",
        "any_other_demand": "nill"
      }
    },
    {
      "id": 1,
      "code": 120,
      "personal_information": {
        "gender": "male",
        "name": "muhammad muzamal",
        "age": 27,
        "marital_status": "single",
        "divorced_reason": "nill",
        "height": 5.6,
        "images": ["https://source.unsplash.com/500x150/?cars"]
      },
      "education_details": {"qualification": "bscs"},
      "job_details": {"nature_of_Job": "freelancer", "income": 500},
      "religion_details": {
        "religion": "islam",
        "caste": "awan",
        "sect": "sunni"
      },
      "property_details": {
        "home_own_on_rent": "rent",
        "size": {"unit": "malra", "value": 1.5},
        "location": "islamabad",
        "other_properties_if_any": "ploat"
      },
      "family_details": {
        "father_occupation": "gov job",
        "mother_occupation": "house wife",
        "siblings": 0,
        "married": 0
      },
      "address": {
        "current_city": "islamabad",
        "home_town": "muhar klan",
        "home_town_location": "abbottabad"
      },
      "your_requirements": {
        "age_limit": 50,
        "height": "any",
        "city": "any",
        "caste": "any",
        "qualification": "any",
        "any_other_demand": "nill"
      }
    },
    {
      "id": 1,
      "code": 120,
      "personal_information": {
        "gender": "male",
        "name": "muhammad muzamal",
        "age": 27,
        "marital_status": "single",
        "divorced_reason": "nill",
        "height": 5.6,
        "images": ["https://source.unsplash.com/500x150/?cars"]
      },
      "education_details": {"qualification": "bscs"},
      "job_details": {"nature_of_Job": "freelancer", "income": 500},
      "religion_details": {
        "religion": "islam",
        "caste": "awan",
        "sect": "sunni"
      },
      "property_details": {
        "home_own_on_rent": "rent",
        "size": {"unit": "malra", "value": 1.5},
        "location": "islamabad",
        "other_properties_if_any": "ploat"
      },
      "family_details": {
        "father_occupation": "gov job",
        "mother_occupation": "house wife",
        "siblings": 0,
        "married": 0
      },
      "address": {
        "current_city": "islamabad",
        "home_town": "muhar klan",
        "home_town_location": "abbottabad"
      },
      "your_requirements": {
        "age_limit": 50,
        "height": "any",
        "city": "any",
        "caste": "any",
        "qualification": "any",
        "any_other_demand": "nill"
      }
    },
  ];
  @override
  Future<List<ClientModel>> getAllClients() async {
    List<ClientModel> fakeClientObjectList = [];
    fakeClientObjectList =
        fakeClientJsonList.map((e) => ClientModel.fromJson(e)).toList();
    return fakeClientObjectList;
  }

  @override
  Future<ClientModel> getClientById(int id) {
    // TODO: implement getPostById
    throw UnimplementedError();
  }
}
