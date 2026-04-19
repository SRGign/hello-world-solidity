# HelloWorld Smart Contract

Simple Solidity project demonstrating basic contract functions and unit testing.

## 📁 Structure
.
├── HelloWorld.sol
└── tests/
└── HelloWorld_test.sol


## 📜 Contract

The contract stores a `name` and provides three functions:

- `helloWorld(string _name)`  
  → Pure function, returns `"hello {_name}"`

- `helloWorldView()`  
  → View function, returns `"hello {stored name}"`

- `helloWorldNo(string _name)`  
  → Updates state variable `name` and returns greeting

---

## 🧪 Tests

Tests are written in Solidity and verify:

- Correct output of the pure function
- Correct reading of state via view function
- Correct state mutation

---

## ⚙️ Solidity Version

pragma solidity 0.8.34;


---

## 📌 Notes

This is a beginner practice project for learning:

- Solidity basics
- Function types (`pure`, `view`, state-changing)
- Simple unit testing
