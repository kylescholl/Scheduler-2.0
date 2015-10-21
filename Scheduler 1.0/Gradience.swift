//
//  Gradience.swift
//  Scheduler 2.0
//
//  Created by Kyle Scholl on 10/21/15.
//  Copyright © 2015 Patronus LLC. All rights reserved.
//


import UIKit

class Colors {
	
	//	let colorTop = UIColor(red: 192.0/255.0, green: 38.0/255.0, blue: 42.0/255.0, alpha: 1.0).CGColor
	let colorTop = UIColor(red: 105.0/255.0, green: 105.0/255.0, blue: 105.0/255.0, alpha: 1.0).CGColor
	let colorBottom = UIColor(red: 35.0/255.0, green: 2.0/255.0, blue: 2.0/255.0, alpha: 1.0).CGColor
	
	let gl: CAGradientLayer
	
	init() {
		gl = CAGradientLayer()
		gl.colors = [ colorTop, colorBottom]
		gl.locations = [ 0.0, 1.0]
	}
}


