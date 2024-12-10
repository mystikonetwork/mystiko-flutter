#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>
typedef struct _Dart_Handle* Dart_Handle;

typedef struct DartCObject DartCObject;

typedef int64_t DartPort;

typedef bool (*DartPostCObjectFnType)(DartPort port_id, void *message);

typedef struct wire_uint_8_list {
  uint8_t *ptr;
  int32_t len;
} wire_uint_8_list;

typedef struct DartCObject *WireSyncReturn;

void store_dart_post_cobject(DartPostCObjectFnType ptr);

Dart_Handle get_dart_object(uintptr_t ptr);

void drop_dart_object(uintptr_t ptr);

uintptr_t new_dart_opaque(Dart_Handle handle);

intptr_t init_frb_dart_api_dl(void *obj);

void wire_initialize(int64_t port_, struct wire_uint_8_list *options);

void wire_is_initialized(int64_t port_);

void wire_destroy(int64_t port_);

void wire_get_config(int64_t port_);

void wire_find_default_circuit(int64_t port_, struct wire_uint_8_list *request);

void wire_find_circuit(int64_t port_, struct wire_uint_8_list *request);

void wire_find_chain(int64_t port_, struct wire_uint_8_list *request);

void wire_find_peer_chains(int64_t port_, struct wire_uint_8_list *request);

void wire_find_asset_symbols(int64_t port_, struct wire_uint_8_list *request);

void wire_find_bridge(int64_t port_, struct wire_uint_8_list *request);

void wire_find_bridges(int64_t port_, struct wire_uint_8_list *request);

void wire_find_deposit_contract(int64_t port_, struct wire_uint_8_list *request);

void wire_find_deposit_contract_by_address(int64_t port_, struct wire_uint_8_list *request);

void wire_find_pool_contract(int64_t port_, struct wire_uint_8_list *request);

void wire_find_pool_contracts(int64_t port_, struct wire_uint_8_list *request);

void wire_find_pool_contract_by_address(int64_t port_, struct wire_uint_8_list *request);

void wire_find_contract_by_address(int64_t port_, struct wire_uint_8_list *request);

void wire_get_transaction_url(int64_t port_, struct wire_uint_8_list *request);

void wire_supported_asset_symbols(int64_t port_, struct wire_uint_8_list *request);

void wire_create_account(int64_t port_, struct wire_uint_8_list *request);

void wire_count(int64_t port_, struct wire_uint_8_list *request);

void wire_count_all(int64_t port_);

void wire_find(int64_t port_, struct wire_uint_8_list *request);

void wire_find_by_id(int64_t port_, struct wire_uint_8_list *request);

void wire_find_by_shielded_address(int64_t port_, struct wire_uint_8_list *request);

void wire_find_by_public_key(int64_t port_, struct wire_uint_8_list *request);

void wire_update_by_id(int64_t port_, struct wire_uint_8_list *request);

void wire_update_by_shielded_address(int64_t port_, struct wire_uint_8_list *request);

void wire_update_by_public_key(int64_t port_, struct wire_uint_8_list *request);

void wire_update_encryption(int64_t port_, struct wire_uint_8_list *request);

void wire_export_secret_key_by_id(int64_t port_, struct wire_uint_8_list *request);

void wire_export_secret_key_by_shielded_address(int64_t port_, struct wire_uint_8_list *request);

void wire_export_secret_key_by_public_key(int64_t port_, struct wire_uint_8_list *request);

void wire_quote_deposit(int64_t port_, struct wire_uint_8_list *request);

void wire_summary_deposit(int64_t port_, struct wire_uint_8_list *request);

void wire_create_deposit(int64_t port_, struct wire_uint_8_list *request);

void wire_send_deposit(int64_t port_, struct wire_uint_8_list *request);

void wire_send_deposit_with_grpc(int64_t port_, struct wire_uint_8_list *request);

void wire_find_deposit(int64_t port_, struct wire_uint_8_list *request);

void wire_find_all_deposit(int64_t port_);

void wire_find_one_deposit(int64_t port_, struct wire_uint_8_list *request);

void wire_deposit_find_by_id(int64_t port_, struct wire_uint_8_list *request);

void wire_count_deposit(int64_t port_, struct wire_uint_8_list *request);

void wire_count_all_deposit(int64_t port_);

void wire_deposit_update(int64_t port_, struct wire_uint_8_list *request);

void wire_deposit_update_batch(int64_t port_, struct wire_uint_8_list *request);

void wire_deposit_update_by_filter(int64_t port_, struct wire_uint_8_list *request);

void wire_deposit_update_all(int64_t port_, struct wire_uint_8_list *request);

void wire_deposit_delete(int64_t port_, struct wire_uint_8_list *request);

void wire_deposit_delete_batch(int64_t port_, struct wire_uint_8_list *request);

void wire_deposit_delete_by_filter(int64_t port_, struct wire_uint_8_list *request);

void wire_deposit_delete_all(int64_t port_);

void wire_scanner_scan(int64_t port_, struct wire_uint_8_list *request);

void wire_scanner_reset(int64_t port_, struct wire_uint_8_list *request);

void wire_balance(int64_t port_, struct wire_uint_8_list *request);

void wire_assets(int64_t port_, struct wire_uint_8_list *request);

void wire_chain_assets(int64_t port_, struct wire_uint_8_list *request);

void wire_assets_import(int64_t port_, struct wire_uint_8_list *request);

void wire_quote_spend(int64_t port_, struct wire_uint_8_list *request);

void wire_summary_spend(int64_t port_, struct wire_uint_8_list *request);

void wire_create_spend(int64_t port_, struct wire_uint_8_list *request);

void wire_send_spend(int64_t port_, struct wire_uint_8_list *request);

void wire_send_spend_with_grpc(int64_t port_, struct wire_uint_8_list *request);

void wire_find_spend(int64_t port_, struct wire_uint_8_list *request);

void wire_find_all_spend(int64_t port_);

void wire_find_one_spend(int64_t port_, struct wire_uint_8_list *request);

void wire_spend_find_by_id(int64_t port_, struct wire_uint_8_list *request);

void wire_count_spend(int64_t port_, struct wire_uint_8_list *request);

void wire_count_all_spend(int64_t port_);

void wire_spend_update(int64_t port_, struct wire_uint_8_list *request);

void wire_spend_update_batch(int64_t port_, struct wire_uint_8_list *request);

void wire_spend_update_by_filter(int64_t port_, struct wire_uint_8_list *request);

void wire_spend_update_all(int64_t port_, struct wire_uint_8_list *request);

void wire_spend_delete(int64_t port_, struct wire_uint_8_list *request);

void wire_spend_delete_batch(int64_t port_, struct wire_uint_8_list *request);

void wire_spend_delete_by_filter(int64_t port_, struct wire_uint_8_list *request);

void wire_spend_delete_all(int64_t port_);

void wire_chain_synced_block(int64_t port_, struct wire_uint_8_list *request);

void wire_contract_synced_block(int64_t port_, struct wire_uint_8_list *request);

void wire_status(int64_t port_, struct wire_uint_8_list *request);

void wire_synchronizer_sync(int64_t port_, struct wire_uint_8_list *request);

void wire_synchronizer_reset(int64_t port_, struct wire_uint_8_list *request);

void wire_create_wallet(int64_t port_, struct wire_uint_8_list *request);

void wire_check_current(int64_t port_);

void wire_check_password(int64_t port_, struct wire_uint_8_list *request);

void wire_update_password(int64_t port_, struct wire_uint_8_list *request);

void wire_export_mnemonic_phrase(int64_t port_, struct wire_uint_8_list *request);

struct wire_uint_8_list *new_uint_8_list_0(int32_t len);

void free_WireSyncReturn(WireSyncReturn ptr);

static int64_t dummy_method_to_enforce_bundling(void) {
    int64_t dummy_var = 0;
    dummy_var ^= ((int64_t) (void*) wire_initialize);
    dummy_var ^= ((int64_t) (void*) wire_is_initialized);
    dummy_var ^= ((int64_t) (void*) wire_destroy);
    dummy_var ^= ((int64_t) (void*) wire_get_config);
    dummy_var ^= ((int64_t) (void*) wire_find_default_circuit);
    dummy_var ^= ((int64_t) (void*) wire_find_circuit);
    dummy_var ^= ((int64_t) (void*) wire_find_chain);
    dummy_var ^= ((int64_t) (void*) wire_find_peer_chains);
    dummy_var ^= ((int64_t) (void*) wire_find_asset_symbols);
    dummy_var ^= ((int64_t) (void*) wire_find_bridge);
    dummy_var ^= ((int64_t) (void*) wire_find_bridges);
    dummy_var ^= ((int64_t) (void*) wire_find_deposit_contract);
    dummy_var ^= ((int64_t) (void*) wire_find_deposit_contract_by_address);
    dummy_var ^= ((int64_t) (void*) wire_find_pool_contract);
    dummy_var ^= ((int64_t) (void*) wire_find_pool_contracts);
    dummy_var ^= ((int64_t) (void*) wire_find_pool_contract_by_address);
    dummy_var ^= ((int64_t) (void*) wire_find_contract_by_address);
    dummy_var ^= ((int64_t) (void*) wire_get_transaction_url);
    dummy_var ^= ((int64_t) (void*) wire_supported_asset_symbols);
    dummy_var ^= ((int64_t) (void*) wire_create_account);
    dummy_var ^= ((int64_t) (void*) wire_count);
    dummy_var ^= ((int64_t) (void*) wire_count_all);
    dummy_var ^= ((int64_t) (void*) wire_find);
    dummy_var ^= ((int64_t) (void*) wire_find_by_id);
    dummy_var ^= ((int64_t) (void*) wire_find_by_shielded_address);
    dummy_var ^= ((int64_t) (void*) wire_find_by_public_key);
    dummy_var ^= ((int64_t) (void*) wire_update_by_id);
    dummy_var ^= ((int64_t) (void*) wire_update_by_shielded_address);
    dummy_var ^= ((int64_t) (void*) wire_update_by_public_key);
    dummy_var ^= ((int64_t) (void*) wire_update_encryption);
    dummy_var ^= ((int64_t) (void*) wire_export_secret_key_by_id);
    dummy_var ^= ((int64_t) (void*) wire_export_secret_key_by_shielded_address);
    dummy_var ^= ((int64_t) (void*) wire_export_secret_key_by_public_key);
    dummy_var ^= ((int64_t) (void*) wire_quote_deposit);
    dummy_var ^= ((int64_t) (void*) wire_summary_deposit);
    dummy_var ^= ((int64_t) (void*) wire_create_deposit);
    dummy_var ^= ((int64_t) (void*) wire_send_deposit);
    dummy_var ^= ((int64_t) (void*) wire_send_deposit_with_grpc);
    dummy_var ^= ((int64_t) (void*) wire_find_deposit);
    dummy_var ^= ((int64_t) (void*) wire_find_all_deposit);
    dummy_var ^= ((int64_t) (void*) wire_find_one_deposit);
    dummy_var ^= ((int64_t) (void*) wire_deposit_find_by_id);
    dummy_var ^= ((int64_t) (void*) wire_count_deposit);
    dummy_var ^= ((int64_t) (void*) wire_count_all_deposit);
    dummy_var ^= ((int64_t) (void*) wire_deposit_update);
    dummy_var ^= ((int64_t) (void*) wire_deposit_update_batch);
    dummy_var ^= ((int64_t) (void*) wire_deposit_update_by_filter);
    dummy_var ^= ((int64_t) (void*) wire_deposit_update_all);
    dummy_var ^= ((int64_t) (void*) wire_deposit_delete);
    dummy_var ^= ((int64_t) (void*) wire_deposit_delete_batch);
    dummy_var ^= ((int64_t) (void*) wire_deposit_delete_by_filter);
    dummy_var ^= ((int64_t) (void*) wire_deposit_delete_all);
    dummy_var ^= ((int64_t) (void*) wire_scanner_scan);
    dummy_var ^= ((int64_t) (void*) wire_scanner_reset);
    dummy_var ^= ((int64_t) (void*) wire_balance);
    dummy_var ^= ((int64_t) (void*) wire_assets);
    dummy_var ^= ((int64_t) (void*) wire_chain_assets);
    dummy_var ^= ((int64_t) (void*) wire_assets_import);
    dummy_var ^= ((int64_t) (void*) wire_quote_spend);
    dummy_var ^= ((int64_t) (void*) wire_summary_spend);
    dummy_var ^= ((int64_t) (void*) wire_create_spend);
    dummy_var ^= ((int64_t) (void*) wire_send_spend);
    dummy_var ^= ((int64_t) (void*) wire_send_spend_with_grpc);
    dummy_var ^= ((int64_t) (void*) wire_find_spend);
    dummy_var ^= ((int64_t) (void*) wire_find_all_spend);
    dummy_var ^= ((int64_t) (void*) wire_find_one_spend);
    dummy_var ^= ((int64_t) (void*) wire_spend_find_by_id);
    dummy_var ^= ((int64_t) (void*) wire_count_spend);
    dummy_var ^= ((int64_t) (void*) wire_count_all_spend);
    dummy_var ^= ((int64_t) (void*) wire_spend_update);
    dummy_var ^= ((int64_t) (void*) wire_spend_update_batch);
    dummy_var ^= ((int64_t) (void*) wire_spend_update_by_filter);
    dummy_var ^= ((int64_t) (void*) wire_spend_update_all);
    dummy_var ^= ((int64_t) (void*) wire_spend_delete);
    dummy_var ^= ((int64_t) (void*) wire_spend_delete_batch);
    dummy_var ^= ((int64_t) (void*) wire_spend_delete_by_filter);
    dummy_var ^= ((int64_t) (void*) wire_spend_delete_all);
    dummy_var ^= ((int64_t) (void*) wire_chain_synced_block);
    dummy_var ^= ((int64_t) (void*) wire_contract_synced_block);
    dummy_var ^= ((int64_t) (void*) wire_status);
    dummy_var ^= ((int64_t) (void*) wire_synchronizer_sync);
    dummy_var ^= ((int64_t) (void*) wire_synchronizer_reset);
    dummy_var ^= ((int64_t) (void*) wire_create_wallet);
    dummy_var ^= ((int64_t) (void*) wire_check_current);
    dummy_var ^= ((int64_t) (void*) wire_check_password);
    dummy_var ^= ((int64_t) (void*) wire_update_password);
    dummy_var ^= ((int64_t) (void*) wire_export_mnemonic_phrase);
    dummy_var ^= ((int64_t) (void*) new_uint_8_list_0);
    dummy_var ^= ((int64_t) (void*) free_WireSyncReturn);
    dummy_var ^= ((int64_t) (void*) store_dart_post_cobject);
    dummy_var ^= ((int64_t) (void*) get_dart_object);
    dummy_var ^= ((int64_t) (void*) drop_dart_object);
    dummy_var ^= ((int64_t) (void*) new_dart_opaque);
    return dummy_var;
}
