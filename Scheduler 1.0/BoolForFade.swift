//
//  BoolForFade.swift
//  Scheduler 2.0
//
//  Created by Kyle Scholl on 10/21/15.
//  Copyright © 2015 Patronus LLC. All rights reserved.
//


import UIKit

class BoolForFade {
	
	let defaults = NSUserDefaults.standardUserDefaults()
	let fadeBoolDefaults = loadBoolVal()
	
	
	var fadeBool: Bool {
		get {
			return fadeBoolDefaults
		}
		set {
			_fadeBool = fadeBoolDefaults
		}
	}
	
	var _fadeBool: Bool {
		get {
			return fadeBool
		}
		set{}
	}
	
	var bools: Bool {
		get {
			print("get: \(_fadeBool)")
			return _fadeBool
		}
		set (newVal) {
			print("newVal: \(newVal)")
			_fadeBool = newVal
			print("set: \(_fadeBool)")
		}
	}
}

func loadBoolVal() -> Bool {
	let defaults = NSUserDefaults.standardUserDefaults()
	let fadeBoolDefaults: Bool = defaults.boolForKey("fadeBool")
	return fadeBoolDefaults
}











