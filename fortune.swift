#!/usr/bin/swift
import Foundation

let fortune = ["大吉\u{2661}", "中吉\u{266a}", "小吉",
    "末吉", "凶\u{1f61e}", "大凶\u{1f480}"]
let idx = Int(time(nil)) % fortune.count
print(fortune[idx])

