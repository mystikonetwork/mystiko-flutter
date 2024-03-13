// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.82.6.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member, prefer_is_empty, unnecessary_const

import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'package:uuid/uuid.dart';
import 'bridge_generated.dart';
export 'bridge_generated.dart';

class MystikoLibBridgePlatform
    extends FlutterRustBridgeBase<MystikoLibBridgeWire>
    with FlutterRustBridgeSetupMixin {
  MystikoLibBridgePlatform(FutureOr<WasmModule> dylib)
      : super(MystikoLibBridgeWire(dylib)) {
    setupMixinConstructor();
  }
  Future<void> setup() => inner.init;

// Section: api2wire

  @protected
  Uint8List api2wire_uint_8_list(Uint8List raw) {
    return raw;
  }
// Section: finalizer
}

// Section: WASM wire module

@JS('wasm_bindgen')
external MystikoLibBridgeWasmModule get wasmModule;

@JS()
@anonymous
class MystikoLibBridgeWasmModule implements WasmModule {
  external Object /* Promise */ call([String? moduleName]);
  external MystikoLibBridgeWasmModule bind(dynamic thisArg, String moduleName);
  external dynamic /* void */ wire_initialize(
      NativePortType port_, Uint8List options);

  external dynamic /* void */ wire_is_initialized(NativePortType port_);

  external dynamic /* void */ wire_destroy(NativePortType port_);

  external dynamic /* void */ wire_get_config(NativePortType port_);

  external dynamic /* void */ wire_find_default_circuit(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_find_circuit(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_find_chain(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_find_peer_chains(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_find_asset_symbols(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_find_bridge(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_find_bridges(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_find_deposit_contract(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_find_deposit_contract_by_address(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_find_pool_contract(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_find_pool_contracts(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_find_pool_contract_by_address(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_find_contract_by_address(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_get_transaction_url(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_supported_asset_symbols(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_create_account(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_count(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_count_all(NativePortType port_);

  external dynamic /* void */ wire_find(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_find_by_id(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_find_by_shielded_address(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_find_by_public_key(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_update_by_id(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_update_by_shielded_address(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_update_by_public_key(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_update_encryption(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_export_secret_key_by_id(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_export_secret_key_by_shielded_address(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_export_secret_key_by_public_key(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_quote_deposit(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_summary_deposit(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_create_deposit(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_send_deposit(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_send_deposit_with_grpc(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_find_deposit(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_find_all_deposit(NativePortType port_);

  external dynamic /* void */ wire_find_one_deposit(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_deposit_find_by_id(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_count_deposit(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_count_all_deposit(NativePortType port_);

  external dynamic /* void */ wire_deposit_update(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_deposit_update_batch(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_deposit_update_by_filter(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_deposit_update_all(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_deposit_delete(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_deposit_delete_batch(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_deposit_delete_by_filter(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_deposit_delete_all(NativePortType port_);

  external dynamic /* void */ wire_scanner_scan(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_scanner_reset(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_balance(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_assets(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_chain_assets(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_quote_spend(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_summary_spend(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_create_spend(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_send_spend(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_send_spend_with_grpc(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_find_spend(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_find_all_spend(NativePortType port_);

  external dynamic /* void */ wire_find_one_spend(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_spend_find_by_id(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_count_spend(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_count_all_spend(NativePortType port_);

  external dynamic /* void */ wire_spend_update(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_spend_update_batch(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_spend_update_by_filter(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_spend_update_all(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_spend_delete(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_spend_delete_batch(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_spend_delete_by_filter(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_spend_delete_all(NativePortType port_);

  external dynamic /* void */ wire_chain_synced_block(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_contract_synced_block(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_status(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_synchronizer_sync(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_synchronizer_reset(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_create_wallet(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_check_current(NativePortType port_);

  external dynamic /* void */ wire_check_password(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_update_password(
      NativePortType port_, Uint8List request);

  external dynamic /* void */ wire_export_mnemonic_phrase(
      NativePortType port_, Uint8List request);
}

// Section: WASM wire connector

class MystikoLibBridgeWire
    extends FlutterRustBridgeWasmWireBase<MystikoLibBridgeWasmModule> {
  MystikoLibBridgeWire(FutureOr<WasmModule> module)
      : super(WasmModule.cast<MystikoLibBridgeWasmModule>(module));

  void wire_initialize(NativePortType port_, Uint8List options) =>
      wasmModule.wire_initialize(port_, options);

  void wire_is_initialized(NativePortType port_) =>
      wasmModule.wire_is_initialized(port_);

  void wire_destroy(NativePortType port_) => wasmModule.wire_destroy(port_);

  void wire_get_config(NativePortType port_) =>
      wasmModule.wire_get_config(port_);

  void wire_find_default_circuit(NativePortType port_, Uint8List request) =>
      wasmModule.wire_find_default_circuit(port_, request);

  void wire_find_circuit(NativePortType port_, Uint8List request) =>
      wasmModule.wire_find_circuit(port_, request);

  void wire_find_chain(NativePortType port_, Uint8List request) =>
      wasmModule.wire_find_chain(port_, request);

  void wire_find_peer_chains(NativePortType port_, Uint8List request) =>
      wasmModule.wire_find_peer_chains(port_, request);

  void wire_find_asset_symbols(NativePortType port_, Uint8List request) =>
      wasmModule.wire_find_asset_symbols(port_, request);

  void wire_find_bridge(NativePortType port_, Uint8List request) =>
      wasmModule.wire_find_bridge(port_, request);

  void wire_find_bridges(NativePortType port_, Uint8List request) =>
      wasmModule.wire_find_bridges(port_, request);

  void wire_find_deposit_contract(NativePortType port_, Uint8List request) =>
      wasmModule.wire_find_deposit_contract(port_, request);

  void wire_find_deposit_contract_by_address(
          NativePortType port_, Uint8List request) =>
      wasmModule.wire_find_deposit_contract_by_address(port_, request);

  void wire_find_pool_contract(NativePortType port_, Uint8List request) =>
      wasmModule.wire_find_pool_contract(port_, request);

  void wire_find_pool_contracts(NativePortType port_, Uint8List request) =>
      wasmModule.wire_find_pool_contracts(port_, request);

  void wire_find_pool_contract_by_address(
          NativePortType port_, Uint8List request) =>
      wasmModule.wire_find_pool_contract_by_address(port_, request);

  void wire_find_contract_by_address(NativePortType port_, Uint8List request) =>
      wasmModule.wire_find_contract_by_address(port_, request);

  void wire_get_transaction_url(NativePortType port_, Uint8List request) =>
      wasmModule.wire_get_transaction_url(port_, request);

  void wire_supported_asset_symbols(NativePortType port_, Uint8List request) =>
      wasmModule.wire_supported_asset_symbols(port_, request);

  void wire_create_account(NativePortType port_, Uint8List request) =>
      wasmModule.wire_create_account(port_, request);

  void wire_count(NativePortType port_, Uint8List request) =>
      wasmModule.wire_count(port_, request);

  void wire_count_all(NativePortType port_) => wasmModule.wire_count_all(port_);

  void wire_find(NativePortType port_, Uint8List request) =>
      wasmModule.wire_find(port_, request);

  void wire_find_by_id(NativePortType port_, Uint8List request) =>
      wasmModule.wire_find_by_id(port_, request);

  void wire_find_by_shielded_address(NativePortType port_, Uint8List request) =>
      wasmModule.wire_find_by_shielded_address(port_, request);

  void wire_find_by_public_key(NativePortType port_, Uint8List request) =>
      wasmModule.wire_find_by_public_key(port_, request);

  void wire_update_by_id(NativePortType port_, Uint8List request) =>
      wasmModule.wire_update_by_id(port_, request);

  void wire_update_by_shielded_address(
          NativePortType port_, Uint8List request) =>
      wasmModule.wire_update_by_shielded_address(port_, request);

  void wire_update_by_public_key(NativePortType port_, Uint8List request) =>
      wasmModule.wire_update_by_public_key(port_, request);

  void wire_update_encryption(NativePortType port_, Uint8List request) =>
      wasmModule.wire_update_encryption(port_, request);

  void wire_export_secret_key_by_id(NativePortType port_, Uint8List request) =>
      wasmModule.wire_export_secret_key_by_id(port_, request);

  void wire_export_secret_key_by_shielded_address(
          NativePortType port_, Uint8List request) =>
      wasmModule.wire_export_secret_key_by_shielded_address(port_, request);

  void wire_export_secret_key_by_public_key(
          NativePortType port_, Uint8List request) =>
      wasmModule.wire_export_secret_key_by_public_key(port_, request);

  void wire_quote_deposit(NativePortType port_, Uint8List request) =>
      wasmModule.wire_quote_deposit(port_, request);

  void wire_summary_deposit(NativePortType port_, Uint8List request) =>
      wasmModule.wire_summary_deposit(port_, request);

  void wire_create_deposit(NativePortType port_, Uint8List request) =>
      wasmModule.wire_create_deposit(port_, request);

  void wire_send_deposit(NativePortType port_, Uint8List request) =>
      wasmModule.wire_send_deposit(port_, request);

  void wire_send_deposit_with_grpc(NativePortType port_, Uint8List request) =>
      wasmModule.wire_send_deposit_with_grpc(port_, request);

  void wire_find_deposit(NativePortType port_, Uint8List request) =>
      wasmModule.wire_find_deposit(port_, request);

  void wire_find_all_deposit(NativePortType port_) =>
      wasmModule.wire_find_all_deposit(port_);

  void wire_find_one_deposit(NativePortType port_, Uint8List request) =>
      wasmModule.wire_find_one_deposit(port_, request);

  void wire_deposit_find_by_id(NativePortType port_, Uint8List request) =>
      wasmModule.wire_deposit_find_by_id(port_, request);

  void wire_count_deposit(NativePortType port_, Uint8List request) =>
      wasmModule.wire_count_deposit(port_, request);

  void wire_count_all_deposit(NativePortType port_) =>
      wasmModule.wire_count_all_deposit(port_);

  void wire_deposit_update(NativePortType port_, Uint8List request) =>
      wasmModule.wire_deposit_update(port_, request);

  void wire_deposit_update_batch(NativePortType port_, Uint8List request) =>
      wasmModule.wire_deposit_update_batch(port_, request);

  void wire_deposit_update_by_filter(NativePortType port_, Uint8List request) =>
      wasmModule.wire_deposit_update_by_filter(port_, request);

  void wire_deposit_update_all(NativePortType port_, Uint8List request) =>
      wasmModule.wire_deposit_update_all(port_, request);

  void wire_deposit_delete(NativePortType port_, Uint8List request) =>
      wasmModule.wire_deposit_delete(port_, request);

  void wire_deposit_delete_batch(NativePortType port_, Uint8List request) =>
      wasmModule.wire_deposit_delete_batch(port_, request);

  void wire_deposit_delete_by_filter(NativePortType port_, Uint8List request) =>
      wasmModule.wire_deposit_delete_by_filter(port_, request);

  void wire_deposit_delete_all(NativePortType port_) =>
      wasmModule.wire_deposit_delete_all(port_);

  void wire_scanner_scan(NativePortType port_, Uint8List request) =>
      wasmModule.wire_scanner_scan(port_, request);

  void wire_scanner_reset(NativePortType port_, Uint8List request) =>
      wasmModule.wire_scanner_reset(port_, request);

  void wire_balance(NativePortType port_, Uint8List request) =>
      wasmModule.wire_balance(port_, request);

  void wire_assets(NativePortType port_, Uint8List request) =>
      wasmModule.wire_assets(port_, request);

  void wire_chain_assets(NativePortType port_, Uint8List request) =>
      wasmModule.wire_chain_assets(port_, request);

  void wire_quote_spend(NativePortType port_, Uint8List request) =>
      wasmModule.wire_quote_spend(port_, request);

  void wire_summary_spend(NativePortType port_, Uint8List request) =>
      wasmModule.wire_summary_spend(port_, request);

  void wire_create_spend(NativePortType port_, Uint8List request) =>
      wasmModule.wire_create_spend(port_, request);

  void wire_send_spend(NativePortType port_, Uint8List request) =>
      wasmModule.wire_send_spend(port_, request);

  void wire_send_spend_with_grpc(NativePortType port_, Uint8List request) =>
      wasmModule.wire_send_spend_with_grpc(port_, request);

  void wire_find_spend(NativePortType port_, Uint8List request) =>
      wasmModule.wire_find_spend(port_, request);

  void wire_find_all_spend(NativePortType port_) =>
      wasmModule.wire_find_all_spend(port_);

  void wire_find_one_spend(NativePortType port_, Uint8List request) =>
      wasmModule.wire_find_one_spend(port_, request);

  void wire_spend_find_by_id(NativePortType port_, Uint8List request) =>
      wasmModule.wire_spend_find_by_id(port_, request);

  void wire_count_spend(NativePortType port_, Uint8List request) =>
      wasmModule.wire_count_spend(port_, request);

  void wire_count_all_spend(NativePortType port_) =>
      wasmModule.wire_count_all_spend(port_);

  void wire_spend_update(NativePortType port_, Uint8List request) =>
      wasmModule.wire_spend_update(port_, request);

  void wire_spend_update_batch(NativePortType port_, Uint8List request) =>
      wasmModule.wire_spend_update_batch(port_, request);

  void wire_spend_update_by_filter(NativePortType port_, Uint8List request) =>
      wasmModule.wire_spend_update_by_filter(port_, request);

  void wire_spend_update_all(NativePortType port_, Uint8List request) =>
      wasmModule.wire_spend_update_all(port_, request);

  void wire_spend_delete(NativePortType port_, Uint8List request) =>
      wasmModule.wire_spend_delete(port_, request);

  void wire_spend_delete_batch(NativePortType port_, Uint8List request) =>
      wasmModule.wire_spend_delete_batch(port_, request);

  void wire_spend_delete_by_filter(NativePortType port_, Uint8List request) =>
      wasmModule.wire_spend_delete_by_filter(port_, request);

  void wire_spend_delete_all(NativePortType port_) =>
      wasmModule.wire_spend_delete_all(port_);

  void wire_chain_synced_block(NativePortType port_, Uint8List request) =>
      wasmModule.wire_chain_synced_block(port_, request);

  void wire_contract_synced_block(NativePortType port_, Uint8List request) =>
      wasmModule.wire_contract_synced_block(port_, request);

  void wire_status(NativePortType port_, Uint8List request) =>
      wasmModule.wire_status(port_, request);

  void wire_synchronizer_sync(NativePortType port_, Uint8List request) =>
      wasmModule.wire_synchronizer_sync(port_, request);

  void wire_synchronizer_reset(NativePortType port_, Uint8List request) =>
      wasmModule.wire_synchronizer_reset(port_, request);

  void wire_create_wallet(NativePortType port_, Uint8List request) =>
      wasmModule.wire_create_wallet(port_, request);

  void wire_check_current(NativePortType port_) =>
      wasmModule.wire_check_current(port_);

  void wire_check_password(NativePortType port_, Uint8List request) =>
      wasmModule.wire_check_password(port_, request);

  void wire_update_password(NativePortType port_, Uint8List request) =>
      wasmModule.wire_update_password(port_, request);

  void wire_export_mnemonic_phrase(NativePortType port_, Uint8List request) =>
      wasmModule.wire_export_mnemonic_phrase(port_, request);
}
