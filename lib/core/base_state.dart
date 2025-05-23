import 'failure.dart';
import 'provider_status.dart';

base class BaseState {
  const BaseState({required this.status, this.failure});

  final ProviderStatus status;
  final Failure? failure;
}
