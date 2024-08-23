// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'read_postal_code.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$readPostalCodeHash() => r'17dd294cca1fc68c0e14f1e3f3b6f35c699bbd6c';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [readPostalCode].
@ProviderFor(readPostalCode)
const readPostalCodeProvider = ReadPostalCodeFamily();

/// See also [readPostalCode].
class ReadPostalCodeFamily extends Family<AsyncValue<PostalCode>> {
  /// See also [readPostalCode].
  const ReadPostalCodeFamily();

  /// See also [readPostalCode].
  ReadPostalCodeProvider call({
    required String postalCode,
  }) {
    return ReadPostalCodeProvider(
      postalCode: postalCode,
    );
  }

  @override
  ReadPostalCodeProvider getProviderOverride(
    covariant ReadPostalCodeProvider provider,
  ) {
    return call(
      postalCode: provider.postalCode,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'readPostalCodeProvider';
}

/// See also [readPostalCode].
class ReadPostalCodeProvider extends AutoDisposeFutureProvider<PostalCode> {
  /// See also [readPostalCode].
  ReadPostalCodeProvider({
    required String postalCode,
  }) : this._internal(
          (ref) => readPostalCode(
            ref as ReadPostalCodeRef,
            postalCode: postalCode,
          ),
          from: readPostalCodeProvider,
          name: r'readPostalCodeProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$readPostalCodeHash,
          dependencies: ReadPostalCodeFamily._dependencies,
          allTransitiveDependencies:
              ReadPostalCodeFamily._allTransitiveDependencies,
          postalCode: postalCode,
        );

  ReadPostalCodeProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.postalCode,
  }) : super.internal();

  final String postalCode;

  @override
  Override overrideWith(
    FutureOr<PostalCode> Function(ReadPostalCodeRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ReadPostalCodeProvider._internal(
        (ref) => create(ref as ReadPostalCodeRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        postalCode: postalCode,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<PostalCode> createElement() {
    return _ReadPostalCodeProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ReadPostalCodeProvider && other.postalCode == postalCode;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, postalCode.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ReadPostalCodeRef on AutoDisposeFutureProviderRef<PostalCode> {
  /// The parameter `postalCode` of this provider.
  String get postalCode;
}

class _ReadPostalCodeProviderElement
    extends AutoDisposeFutureProviderElement<PostalCode>
    with ReadPostalCodeRef {
  _ReadPostalCodeProviderElement(super.provider);

  @override
  String get postalCode => (origin as ReadPostalCodeProvider).postalCode;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
