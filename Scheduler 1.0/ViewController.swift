//
//  ViewController.swift
//  Scheduler 1.0
//
//  Created by Kyle Scholl on 10/8/15.
//  Copyright © 2015 Patronus LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController, AddItemViewControllerDelegate {
	
	func aBlockController(aBlockController: AddItemViewController, aBlockItem: String){
		
		let defaults = NSUserDefaults.standardUserDefaults()
		defaults.setValue(aBlockItem, forKey: "ABlock")
		defaults.synchronize()
		
		print("aBlockItem: \(aBlockItem)")
		
		let numOfBlocks: Int = (aBlockLabelCollection.count)
		print("numOfABlocks: \(numOfBlocks)")
		
		for index in 0..<numOfBlocks {
			aBlockLabelCollection[index].text = aBlockItem
			print("index: \(index)")
		}
	}
	
	func bBlockController(bBlockController: AddItemViewController, bBlockItem: String){
		
		let defaults = NSUserDefaults.standardUserDefaults()
		defaults.setValue(bBlockItem, forKey: "BBlock")
		defaults.synchronize()
		
		let numOfBlocks: Int = bBlockLabelCollection.count
		for index in 0..<numOfBlocks {
			bBlockLabelCollection[index].text = bBlockItem
		}
	}
	
	func cBlockController(cBlockController: AddItemViewController, cBlockItem: String){
		
		let defaults = NSUserDefaults.standardUserDefaults()
		defaults.setValue(cBlockItem, forKey: "CBlock")
		defaults.synchronize()
		
		let numOfBlocks: Int = cBlockLabelCollection.count
		print("numOfABlocks: \(numOfBlocks)")
		
		for index in 0..<numOfBlocks {
			cBlockLabelCollection[index].text = cBlockItem
		}
	}
	
	func dBlockController(dBlockController: AddItemViewController, dBlockItem: String){
		
		let defaults = NSUserDefaults.standardUserDefaults()
		defaults.setValue(dBlockItem, forKey: "DBlock")
		defaults.synchronize()
		
		let numOfBlocks: Int = dBlockLabelCollection.count
		for index in 0..<numOfBlocks {
			dBlockLabelCollection[index].text = dBlockItem
		}
	}
	
	func eBlockController(eBlockController: AddItemViewController, eBlockItem: String){
		
		let defaults = NSUserDefaults.standardUserDefaults()
		defaults.setValue(eBlockItem, forKey: "EBlock")
		defaults.synchronize()
		
		let numOfBlocks: Int = eBlockLabelCollection.count
		for index in 0..<numOfBlocks {
			eBlockLabelCollection[index].text = eBlockItem
		}
	}
	
	func fBlockController(fBlockController: AddItemViewController, fBlockItem: String){
		
		let defaults = NSUserDefaults.standardUserDefaults()
		defaults.setValue(fBlockItem, forKey: "FBlock")
		defaults.synchronize()
		
		let numOfBlocks: Int = fBlockLabelCollection.count
		for index in 0..<numOfBlocks {
			fBlockLabelCollection[index].text = fBlockItem
		}
	}
	
	func gBlockController(gBlockController: AddItemViewController, gBlockItem: String){
		
		let defaults = NSUserDefaults.standardUserDefaults()
		defaults.setValue(gBlockItem, forKey: "GBlock")
		defaults.synchronize()
		
		let numOfBlocks: Int = gBlockLabelCollection.count
		for index in 0..<numOfBlocks {
			gBlockLabelCollection[index].text = gBlockItem
		}
	}
	
	
	
	
					// OUTLETS //
	
		// LETTER BLOCKS (diagonal) //
	
	// Robotics
	@IBOutlet var aBlockLabelCollection: [UILabel]!
	
	// Coding
	@IBOutlet var bBlockLabelCollection: [UILabel]!
	
	// Free / college counseling
	@IBOutlet var cBlockLabelCollection: [UILabel]!
	
	// English
	@IBOutlet var dBlockLabelCollection: [UILabel]!
	
	// Science
	@IBOutlet var eBlockLabelCollection: [UILabel]!
	
	// Math
	@IBOutlet var fBlockLabelCollection: [UILabel]!
	
	// History
	@IBOutlet var gBlockLabelCollection: [UILabel]!
	
	
		// DAY # COLLECTIONS (vertical) //
	
	// Day 1
	@IBOutlet var dayOneGroup: [UILabel]!
	
	// Day 2
	@IBOutlet var dayTwoGroup: [UILabel]!
	
	// Day 3
	@IBOutlet var dayThreeGroup: [UILabel]!
	
	
	
	
	
	
	
	//
	//	HIGHLIGHT ALL BLOCKS ON THE DAY CLICKED
	//		THE DAY NUMBERS ARE NOW BUTTONS
	//
	
	
	// BUTTON OUTLETS
	
	@IBOutlet var dayOneButton: UIButton!
	
	@IBOutlet var dayTwoButton: UIButton!
	
	@IBOutlet var dayThreeButton: UIButton!
	
	@IBOutlet var dayFourButton: UIButton!
	
	@IBOutlet var dayFiveButton: UIButton!
	
	@IBOutlet var daySixButton: UIButton!
	
	@IBOutlet var daySevenButton: UIButton!
	
	
	// BUTTON FUNCTION(S)
	
	
	

	
	func setLabelText(someString: String) {
		
		let aNumIndex: Int = aBlockLabelCollection.count
		let bNumIndex: Int = bBlockLabelCollection.count
		let cNumIndex: Int = cBlockLabelCollection.count
		let dNumIndex: Int = dBlockLabelCollection.count
		let eNumIndex: Int = eBlockLabelCollection.count
		let fNumIndex: Int = fBlockLabelCollection.count
		let gNumIndex: Int = gBlockLabelCollection.count
		
		// A
		for index in 0..<aNumIndex {
			aBlockLabelCollection[index].text = someString
		}
		
		// B
		for index in 0..<bNumIndex {
			bBlockLabelCollection[index].text = someString
		}
		
		// C
		for index in 0..<cNumIndex {
			cBlockLabelCollection[index].text = someString
		}
		
		// D
		for index in 0..<dNumIndex {
			dBlockLabelCollection[index].text = someString
		}
		
		// E
		for index in 0..<eNumIndex {
			eBlockLabelCollection[index].text = someString
		}
		
		// F
		for index in 0..<fNumIndex {
			fBlockLabelCollection[index].text = someString
		}
		
		// G
		for index in 0..<gNumIndex {
			gBlockLabelCollection[index].text = someString
		}
	}
	
	
	@IBAction func clearSchedule(sender: UIBarButtonItem) {
		//Create the AlertController
		let actionSheetController: UIAlertController = UIAlertController(title: "Clear",
			message: "Are you sure that you want to clear the schedule?",
			preferredStyle: .Alert)
		
		//Create and add the Cancel action
		let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .Cancel) { action -> Void in
			//Do some stuff
		}
		actionSheetController.addAction(cancelAction)
		
		//Create and add an option action
		let nextAction: UIAlertAction = UIAlertAction(title: "Yes, clear", style: UIAlertActionStyle.Default) { action -> Void in
			self.setLabelText("")
			
		}
		actionSheetController.addAction(nextAction)
	
	//Change the text color——not working for me
		//self.window?.tintColor = UIColor.orangeColor()
	
	//Present the AlertController
	self.presentViewController(actionSheetController, animated: true, completion: nil)
		
	}
	
	
	
	
	//runs when opening AddItemViewController
	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		if segue.identifier == "AddItemViewController" {
			let navigationController = segue.destinationViewController as? UINavigationController
			let addItemViewController = navigationController?.topViewController as? AddItemViewController
			
			if let viewController = addItemViewController {
				viewController.delegate = self
			}
		}
	}
	
	func saveSchedule() {
	}
	
	func loadSchedule(){
		
		let defaults = NSUserDefaults.standardUserDefaults()
		
		// Last indexes of each array
		let aNumIndex = aBlockLabelCollection.count
		let bNumIndex = bBlockLabelCollection.count
		let cNumIndex = cBlockLabelCollection.count
		let dNumIndex = dBlockLabelCollection.count
		let eNumIndex = eBlockLabelCollection.count
		let fNumIndex = fBlockLabelCollection.count
		let gNumIndex = gBlockLabelCollection.count
		
		// A
		for index in 0..<aNumIndex {
			aBlockLabelCollection[index].text = defaults.stringForKey("ABlock")
		}

		// B
		for index in 0..<bNumIndex {
			bBlockLabelCollection[index].text = defaults.stringForKey("BBlock")
		}
		
		// C
		for index in 0..<cNumIndex {
			cBlockLabelCollection[index].text = defaults.stringForKey("CBlock")
		}
		
		// D
		for index in 0..<dNumIndex {
			dBlockLabelCollection[index].text = defaults.stringForKey("DBlock")
		}
		
		// E
		for index in 0..<eNumIndex {
			eBlockLabelCollection[index].text = defaults.stringForKey("EBlock")
		}
		
		// F
		for index in 0..<fNumIndex {
			fBlockLabelCollection[index].text = defaults.stringForKey("FBlock")
		}
		
		// G
		for index in 0..<gNumIndex {
			gBlockLabelCollection[index].text = defaults.stringForKey("GBlock")
		}
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		loadSchedule()
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
	}
	
	
	/*
	@IBAction func showAlertTapped(sender: AnyObject) {
	//Create the AlertController
	let actionSheetController: UIAlertController = UIAlertController(title: "Classes",
	message: "A block: Robotics –––– ran into problems –> fix later",
	preferredStyle: .Alert)
	
	//Create and add the Cancel action
	let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .Cancel) { action -> Void in
	//Do some stuff
	}
	actionSheetController.addAction(cancelAction)
	//Create and add an option action
	//let nextAction: UIAlertAction = UIAlertAction(title: "Next", style: .Default) { action -> Void in
	//Do some other stuff
	}
	
	//Change the text color
	//self.window?.tintColor = UIColor.orangeColor()
	
	//Present the AlertController
	self.presentViewController(actionSheetController, animated: true, completion: nil)
	}
	*/
}



