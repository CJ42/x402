// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @notice Emitted when settle() completes successfully
event Settled();

/// @notice Emitted when settleWithPermit() completes successfully
event SettledWithPermit();

/// @notice Emitted when EIP-2612 permit() reverts with an Error(string) reason
/// @param token The token whose permit() was called
/// @param owner The token owner for whom permit was attempted
/// @param reason The human-readable revert reason string
event EIP2612PermitFailedWithReason(
    address indexed token,
    address indexed owner,
    string reason
);

/// @notice Emitted when EIP-2612 permit() reverts with a Panic(uint256) code
/// @param token The token whose permit() was called
/// @param owner The token owner for whom permit was attempted
/// @param errorCode The Solidity panic code (e.g. 0x11 for overflow, 0x01 for assert)
event EIP2612PermitFailedWithPanic(
    address indexed token,
    address indexed owner,
    uint256 errorCode
);

/// @notice Emitted when EIP-2612 permit() reverts with a custom error or empty data
/// @param token The token whose permit() was called
/// @param owner The token owner for whom permit was attempted
/// @param data The raw revert data (custom error selector + params, or empty)
event EIP2612PermitFailedWithData(
    address indexed token,
    address indexed owner,
    bytes data
);
