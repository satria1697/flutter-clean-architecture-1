import 'package:equatable/equatable.dart';
import 'package:four/constant/network/method.dart';

class EndpointInfo extends Equatable {
  const EndpointInfo({required this.method, required this.endpoint});

  final HttpMethod method;
  final String endpoint;

  @override
  List<Object?> get props => [method, endpoint];
}
