//
//  BoolForFade.swift
//  Scheduler 2.0
//
//  Created by Kyle Scholl on 10/21/15.
//  Copyright © 2015 Patronus LLC. All rights reserved.
//


import UIKit

class BoolForFade {
	
	var _fadeBool: Bool = false
	
	var bools: Bool {
		get {
			print("get: \(_fadeBool)")
			return _fadeBool
		}
		set (newVal) {
			_fadeBool = newVal
			print("set: \(_fadeBool)")
			return _fadeBool
		}
	}
}