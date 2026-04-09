// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

/// @notice Thrown when Permit2 address is zero
error InvalidPermit2Address();

/// @notice Thrown when destination address is zero
error InvalidDestination();

/// @notice Thrown when payment is attempted before validAfter timestamp
error PaymentTooEarly();

/// @notice Thrown when owner address is zero
error InvalidOwner();

/// @notice Thrown when settlement amount is zero
error InvalidAmount();

/// @notice Thrown when EIP-2612 permit value doesn't match Permit2 permitted amount
error Permit2612AmountMismatch();
