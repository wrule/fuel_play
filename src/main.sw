contract;

abi MyContract {
  fn test_function() -> bool;
  #[storage(read)]
  fn count() -> u64;
}

storage {
  counter: u64 = 0,
}

impl MyContract for Contract {
  fn test_function() -> bool {
    true
  }

  #[storage(read)]
  fn count() -> u64 {
    storage.counter.read()
  }
}
