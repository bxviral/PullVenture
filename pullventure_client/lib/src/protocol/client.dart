/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:pullventure_client/src/protocol/investor_class.dart' as _i3;
import 'package:pullventure_client/src/protocol/startup_class.dart' as _i4;
import 'dart:io' as _i5;
import 'protocol.dart' as _i6;

class _EndpointExample extends _i1.EndpointRef {
  _EndpointExample(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'example';

  _i2.Future<String> hello(String name) => caller.callServerEndpoint<String>(
        'example',
        'hello',
        {'name': name},
      );
}

class _EndpointInvestor extends _i1.EndpointRef {
  _EndpointInvestor(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'investor';

  _i2.Future<_i3.Investor> create(_i3.Investor investor) =>
      caller.callServerEndpoint<_i3.Investor>(
        'investor',
        'create',
        {'investor': investor},
      );

  _i2.Future<_i3.Investor?> read(int id) =>
      caller.callServerEndpoint<_i3.Investor?>(
        'investor',
        'read',
        {'id': id},
      );

  _i2.Future<List<_i3.Investor>> readAll() =>
      caller.callServerEndpoint<List<_i3.Investor>>(
        'investor',
        'readAll',
        {},
      );

  _i2.Future<_i3.Investor> update(_i3.Investor investor) =>
      caller.callServerEndpoint<_i3.Investor>(
        'investor',
        'update',
        {'investor': investor},
      );

  _i2.Future<void> delete(int id) => caller.callServerEndpoint<void>(
        'investor',
        'delete',
        {'id': id},
      );
}

class _EndpointStartUp extends _i1.EndpointRef {
  _EndpointStartUp(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'startUp';

  _i2.Future<_i4.StartUp> create(_i4.StartUp startUp) =>
      caller.callServerEndpoint<_i4.StartUp>(
        'startUp',
        'create',
        {'startUp': startUp},
      );

  _i2.Future<_i4.StartUp?> read(int id) =>
      caller.callServerEndpoint<_i4.StartUp?>(
        'startUp',
        'read',
        {'id': id},
      );

  _i2.Future<List<_i4.StartUp>> readAll() =>
      caller.callServerEndpoint<List<_i4.StartUp>>(
        'startUp',
        'readAll',
        {},
      );

  _i2.Future<_i4.StartUp> update(_i4.StartUp startUp) =>
      caller.callServerEndpoint<_i4.StartUp>(
        'startUp',
        'update',
        {'startUp': startUp},
      );

  _i2.Future<void> delete(int id) => caller.callServerEndpoint<void>(
        'startUp',
        'delete',
        {'id': id},
      );
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    _i5.SecurityContext? context,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
  }) : super(
          host,
          _i6.Protocol(),
          context: context,
          authenticationKeyManager: authenticationKeyManager,
        ) {
    example = _EndpointExample(this);
    investor = _EndpointInvestor(this);
    startUp = _EndpointStartUp(this);
  }

  late final _EndpointExample example;

  late final _EndpointInvestor investor;

  late final _EndpointStartUp startUp;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'example': example,
        'investor': investor,
        'startUp': startUp,
      };
  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}
