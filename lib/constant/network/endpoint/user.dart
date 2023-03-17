import 'package:four/constant/network/method.dart';
import 'package:four/domain/network/endpoint_info.dart';

class UserEndpoint {
  EndpointInfo getUser(String id) => EndpointInfo(
        endpoint: "user/$id",
        method: HttpMethod.GET,
      );

  EndpointInfo getUserList() => const EndpointInfo(
        endpoint: "user",
        method: HttpMethod.GET,
      );
}
