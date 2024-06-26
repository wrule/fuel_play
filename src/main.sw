contract;

abi MyContract {
  fn test_function() -> bool;
  #[storage(read)]
  fn count() -> u64;
  #[storage(read, write)]
  fn increment();
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
    return storage.counter.read();
  }

  #[storage(read, write)]
  fn increment() {
    let result = storage.counter.read() + 1;
    storage.counter.write(result);
  }
}
