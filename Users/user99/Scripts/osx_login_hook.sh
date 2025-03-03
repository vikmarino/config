#!/bin/sh
# remap caps-lock to backspace, and remap backspace to delete:
hidutil property --set '{"UserKeyMapping":[{"HIDKeyboardModifierMappingSrc":0x700000039,"HIDKeyboardModifierMappingDst":0x70000002A}]}'
# change backspace by delete, {"HIDKeyboardModifierMappingSrc":0x70000002A,"HIDKeyboardModifierMappingDst":0x70000004C}