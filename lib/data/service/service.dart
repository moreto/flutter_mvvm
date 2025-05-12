import 'hosts.dart';

enum Service {
  rotulosByLocale('/api/v1/rotulo', kDesHost, kHmHost, kPrdHost, false),
  login('/api/v1/acesso/login', kDesHost, kHmHost, kPrdHost, false);

  const Service(this.endpoint, this.des, this.hm, this.prd, this.requireAuth);
  final String endpoint;
  final String des;
  final String hm;
  final String prd;
  final bool requireAuth;
}
