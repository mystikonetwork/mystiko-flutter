use prost::Message;

/// mystiko api
pub fn initialize(options: Vec<u8>) -> Vec<u8> {
    mystiko_lib::initialize(options).encode_to_vec()
}

pub fn is_initialized() -> bool {
    mystiko_lib::is_initialized()
}

pub fn destroy() {
    mystiko_lib::destroy()
}

/// config api
pub fn get_config() -> Vec<u8> {
    mystiko_lib::config::get().encode_to_vec()
}

pub fn find_default_circuit(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::config::find_default_circuit(request).encode_to_vec()
}

pub fn find_circuit(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::config::find_circuit(request).encode_to_vec()
}

pub fn find_chain(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::config::find_chain(request).encode_to_vec()
}

pub fn find_peer_chains(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::config::find_peer_chains(request).encode_to_vec()
}

pub fn find_asset_symbols(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::config::find_asset_symbols(request).encode_to_vec()
}

pub fn find_bridge(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::config::find_bridge(request).encode_to_vec()
}

pub fn find_bridges(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::config::find_bridges(request).encode_to_vec()
}

pub fn find_deposit_contract(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::config::find_deposit_contract(request).encode_to_vec()
}

pub fn find_deposit_contract_by_address(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::config::find_deposit_contract_by_address(request).encode_to_vec()
}

pub fn find_pool_contract(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::config::find_pool_contract(request).encode_to_vec()
}

pub fn find_pool_contracts(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::config::find_pool_contracts(request).encode_to_vec()
}

pub fn find_pool_contract_by_address(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::config::find_pool_contract_by_address(request).encode_to_vec()
}

pub fn find_contract_by_address(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::config::find_contract_by_address(request).encode_to_vec()
}

pub fn get_transaction_url(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::config::get_transaction_url(request).encode_to_vec()
}

pub fn supported_asset_symbols(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::config::supported_asset_symbols(request).encode_to_vec()
}

/// account api
pub fn create_account(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::account::create(request).encode_to_vec()
}

pub fn count(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::account::count(request).encode_to_vec()
}

pub fn count_all() -> Vec<u8> {
    mystiko_lib::account::count_all().encode_to_vec()
}

pub fn find(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::account::find(request).encode_to_vec()
}

pub fn find_by_id(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::account::find_by_id(request).encode_to_vec()
}

pub fn find_by_shielded_address(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::account::find_by_shielded_address(request).encode_to_vec()
}

pub fn find_by_public_key(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::account::find_by_public_key(request).encode_to_vec()
}

pub fn update_by_id(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::account::update_by_id(request).encode_to_vec()
}

pub fn update_by_shielded_address(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::account::update_by_shielded_address(request).encode_to_vec()
}

pub fn update_by_public_key(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::account::update_by_public_key(request).encode_to_vec()
}

pub fn update_encryption(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::account::update_encryption(request).encode_to_vec()
}

pub fn export_secret_key_by_id(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::account::export_secret_key_by_id(request).encode_to_vec()
}

pub fn export_secret_key_by_shielded_address(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::account::export_secret_key_by_shielded_address(request).encode_to_vec()
}

pub fn export_secret_key_by_public_key(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::account::export_secret_key_by_public_key(request).encode_to_vec()
}

/// deposit api
pub fn quote_deposit(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::deposit::quote(request).encode_to_vec()
}

pub fn summary_deposit(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::deposit::summary(request).encode_to_vec()
}

pub fn create_deposit(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::deposit::create(request).encode_to_vec()
}

pub fn send_deposit(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::deposit::send(request).encode_to_vec()
}

pub fn send_deposit_with_grpc(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::deposit::send_with_grpc(request).encode_to_vec()
}

pub fn find_deposit(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::deposit::find(request).encode_to_vec()
}

pub fn find_all_deposit() -> Vec<u8> {
    mystiko_lib::deposit::find_all().encode_to_vec()
}

pub fn find_one_deposit(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::deposit::find_one(request).encode_to_vec()
}

pub fn deposit_find_by_id(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::deposit::find_by_id(request).encode_to_vec()
}

pub fn count_deposit(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::deposit::count(request).encode_to_vec()
}

pub fn count_all_deposit() -> Vec<u8> {
    mystiko_lib::deposit::count_all().encode_to_vec()
}

pub fn deposit_update(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::deposit::update(request).encode_to_vec()
}

pub fn deposit_update_batch(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::deposit::update_batch(request).encode_to_vec()
}

pub fn deposit_update_by_filter(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::deposit::update_by_filter(request).encode_to_vec()
}

pub fn deposit_update_all(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::deposit::update_all(request).encode_to_vec()
}

pub fn deposit_delete(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::deposit::delete(request).encode_to_vec()
}

pub fn deposit_delete_batch(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::deposit::delete_batch(request).encode_to_vec()
}

pub fn deposit_delete_by_filter(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::deposit::delete_by_filter(request).encode_to_vec()
}

pub fn deposit_delete_all() -> Vec<u8> {
    mystiko_lib::deposit::delete_all().encode_to_vec()
}

/// scanner api
pub fn scanner_scan(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::scanner::scan(request).encode_to_vec()
}

pub fn scanner_reset(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::scanner::reset(request).encode_to_vec()
}

pub fn balance(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::scanner::balance(request).encode_to_vec()
}

pub fn assets(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::scanner::assets(request).encode_to_vec()
}

pub fn chain_assets(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::scanner::chain_assets(request).encode_to_vec()
}

pub fn assets_import(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::scanner::import(request).encode_to_vec()
}

pub fn scanner_sync(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::scanner::sync(request).encode_to_vec()
}

/// spend api
pub fn quote_spend(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::spend::quote(request).encode_to_vec()
}

pub fn summary_spend(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::spend::summary(request).encode_to_vec()
}

pub fn create_spend(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::spend::create(request).encode_to_vec()
}

pub fn send_spend(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::spend::send(request).encode_to_vec()
}

pub fn send_spend_with_grpc(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::spend::send_with_grpc(request).encode_to_vec()
}

pub fn find_spend(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::spend::find(request).encode_to_vec()
}

pub fn find_all_spend() -> Vec<u8> {
    mystiko_lib::spend::find_all().encode_to_vec()
}

pub fn find_one_spend(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::spend::find_one(request).encode_to_vec()
}

pub fn spend_find_by_id(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::spend::find_by_id(request).encode_to_vec()
}

pub fn count_spend(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::spend::count(request).encode_to_vec()
}

pub fn count_all_spend() -> Vec<u8> {
    mystiko_lib::spend::count_all().encode_to_vec()
}

pub fn spend_update(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::spend::update(request).encode_to_vec()
}

pub fn spend_update_batch(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::spend::update_batch(request).encode_to_vec()
}

pub fn spend_update_by_filter(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::spend::update_by_filter(request).encode_to_vec()
}

pub fn spend_update_all(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::spend::update_all(request).encode_to_vec()
}

pub fn spend_delete(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::spend::delete(request).encode_to_vec()
}

pub fn spend_delete_batch(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::spend::delete_batch(request).encode_to_vec()
}

pub fn spend_delete_by_filter(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::spend::delete_by_filter(request).encode_to_vec()
}

pub fn spend_delete_all() -> Vec<u8> {
    mystiko_lib::spend::delete_all().encode_to_vec()
}

/// synchronizer api
pub fn chain_synced_block(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::synchronizer::chain_synced_block(request).encode_to_vec()
}

pub fn contract_synced_block(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::synchronizer::contract_synced_block(request).encode_to_vec()
}

pub fn status(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::synchronizer::status(request).encode_to_vec()
}

pub fn synchronizer_sync(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::synchronizer::sync(request).encode_to_vec()
}

pub fn synchronizer_reset(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::synchronizer::reset(request).encode_to_vec()
}

/// wallet api
pub fn create_wallet(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::wallet::create(request).encode_to_vec()
}

pub fn check_current() -> Vec<u8> {
    mystiko_lib::wallet::check_current().encode_to_vec()
}

pub fn check_password(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::wallet::check_password(request).encode_to_vec()
}

pub fn update_password(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::wallet::update_password(request).encode_to_vec()
}

pub fn export_mnemonic_phrase(request: Vec<u8>) -> Vec<u8> {
    mystiko_lib::wallet::export_mnemonic_phrase(request).encode_to_vec()
}
