import 'dart:convert';
import 'package:http/http.dart';
import 'package:lettutor_app/data/network/rest_client.dart';
import 'package:lettutor_app/models/schedule/tutor_schedule_list.dart';
import 'package:lettutor_app/models/tutor/tutor.dart';
import 'package:lettutor_app/models/tutor/tutor_basic_info.dart';
import 'package:lettutor_app/models/tutor/tutor_feedback.dart';
import 'package:lettutor_app/models/tutor/tutor_list.dart';

class TutorApiClient {
  final BaseClient httpClient;
  RestClient _restClient;
  TutorApiClient({this.httpClient}) {
    _restClient = RestClient(httpClient);
  }

  Future<TutorList> getTutors(
      int perPage, int page, List<String> specialties, String keyword) async {
    final String endpoint = '/tutor/search';
    final Response response = await _restClient.post('$endpoint', body: {
      "filters": {
        "specialties": specialties,
      },
      "perPage": perPage,
      "page": page,
      "search": keyword
    });
    if (response.statusCode == 200) {
      final TutorList tutorList = TutorList.fromJson(jsonDecode(response.body));
      return tutorList;
    }
    return null;
  }

  Future<Tutor> getTutorById(String id) async {
    final String endpoint = '/tutor/$id';
    final Response response = await _restClient.get('$endpoint');
    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      final Tutor tutor = Tutor.fromJson(body);
      TutorBasicInfo tutorBasicInfo =
          TutorBasicInfo.fromJson(body['User'] ?? {});
      tutor.tutorBasicInfo = tutorBasicInfo;
      return tutor;
    }
    return null;
  }

  Future<TutorScheduleList> fetchTutorSchedules(
    String tutorId,
  ) async {
    DateTime time = DateTime.now();
    final String endpoint = '/schedule';
    final Response response = await _restClient.get('$endpoint', params: {
      'tutorId': tutorId,
      'startTimestamp': time
          .subtract(const Duration(days: 1))
          .millisecondsSinceEpoch
          .toString()
          .substring(0, 13),
      'endTimestamp': time
          .add(const Duration(days: 5))
          .millisecondsSinceEpoch
          .toString()
          .substring(0, 13),
    });
    if (response.statusCode == 200) {
      return TutorScheduleList.fromJson(jsonDecode(response.body));
    }
    return null;
  }

  Future<double> getPriceOfSession() async {
    return 100;
  }

  Future<List<TutorFeedback>> getReview(
      String id, int page, int perPage) async {
    final String endpoint = '/feedback/v2/$id';
    print('0');
    final Response response = await _restClient.get('$endpoint', params: {
      'page': '1',
      'perPage': '15',
    });
    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      final List<TutorFeedback> tutorFeedback =
          ((body['data']['rows'] ?? []) as List)
              .map((e) => TutorFeedback.fromJson(e))
              .toList();

      return tutorFeedback;
    }
    return null;
  }
}
