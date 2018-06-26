
//Address: 0xbeac5df5f1c56f949852c8589314036042c1d603
//Contract name: ArrayLib
//Balance: 0 Ether
//Verification Date: 2/7/2017
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.8;

library ArrayLib {
  // Inserts to keep array sorted (assumes input array is sorted)
	function insertInPlace(uint8[] storage self, uint8 n) {
		uint8 insertingIndex = 0;

		while (self.length > 0 && insertingIndex < self.length && self[insertingIndex] < n) {
			insertingIndex += 1;
		}

		self.length += 1;
		for (uint8 i = uint8(self.length) - 1; i > insertingIndex; i--) {
			self[i] = self[i - 1];
		}

		self[insertingIndex] = n;
	}
}
