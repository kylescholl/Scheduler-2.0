//
//  ViewController.swift
//  Scheduler 2.0
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
	
	
		// DAY COLLECTIONS (vertical) //
	
	// Day 1
	@IBOutlet var dayOneGroup: [UILabel]!
	
	// Day 2
	@IBOutlet var dayTwoGroup: [UILabel]!
	
	// Day 3
	@IBOutlet var dayThreeGroup: [UILabel]!
	
	// Day 4
	@IBOutlet var dayFourGroup: [UILabel]!
	
	// Day 5
	@IBOutlet var dayFiveGroup: [UILabel]!
	
	// Day 6
	@IBOutlet var daySixGroup: [UILabel]!
	
	// Day 7
	@IBOutlet var daySevenGroup: [UILabel]!
	
	
		// BUTTON OUTLETS
	
	@IBOutlet var dayOneButton: UIButton!
	
	@IBOutlet var dayTwoButton: UIButton!
	
	@IBOutlet var dayThreeButton: UIButton!
	
	@IBOutlet var dayFourButton: UIButton!
	
	@IBOutlet var dayFiveButton: UIButton!
	
	@IBOutlet var daySixButton: UIButton!
	
	@IBOutlet var daySevenButton: UIButton!
	
	
		// BUTTON FUNCTION(S)
	
	@IBAction func highlightDaySelected(sender: UIButton) {
		
		let dayOneNumIndex: Int = dayOneGroup.count
		let dayTwoNumIndex: Int = dayTwoGroup.count
		let dayThreeNumIndex: Int = dayThreeGroup.count
		let dayFourNumIndex: Int = dayFourGroup.count
		let dayFiveNumIndex: Int = dayFiveGroup.count
		let daySixNumIndex: Int = daySixGroup.count
		let daySevenNumIndex: Int = daySevenGroup.count
		
		var currentDayIndex: Int
		
		let niceBlue: UIColor = UIColor(red: 0, green: 128, blue: 255, alpha: 1)
		
		setLabelColorsToDefault(niceBlue)
		
		let tag = sender.tag
		switch tag {
		case 1:
			currentDayIndex = dayOneNumIndex
			for index in 0..<currentDayIndex {
				
				dayOneGroup[index].textColor = UIColor.whiteColor()
				dayOneGroup[index].backgroundColor = niceBlue
				
				print("tag: \(tag)")
			}
			print("Day 1 pressed")
			
		case 2:
			currentDayIndex = dayTwoNumIndex
			for index in 0..<currentDayIndex {
				
				dayTwoGroup[index].textColor = UIColor.whiteColor()
				dayTwoGroup[index].backgroundColor = niceBlue
				
				print("tag: \(tag)")
			}
			
		case 3:
			currentDayIndex = dayThreeNumIndex
			for index in 0..<currentDayIndex {
				
				dayThreeGroup[index].textColor = UIColor.whiteColor()
				dayThreeGroup[index].backgroundColor = niceBlue
				
				print("tag: \(tag)")
			}
		
		case 4:
			currentDayIndex = dayFourNumIndex
			for index in 0..<currentDayIndex {
				
				dayFourGroup[index].textColor = UIColor.whiteColor()
				dayFourGroup[index].backgroundColor = niceBlue
				
				print("tag: \(tag)")
			}
		
		case 5:
			currentDayIndex = dayFiveNumIndex
			for index in 0..<currentDayIndex {
				
				dayFiveGroup[index].textColor = UIColor.whiteColor()
				dayFiveGroup[index].backgroundColor = niceBlue
				
				print("tag: \(tag)")
			}
		
		case 6:
			currentDayIndex = daySixNumIndex
			for index in 0..<currentDayIndex {
				
				daySixGroup[index].textColor = UIColor.whiteColor()
				daySixGroup[index].backgroundColor = niceBlue
				
				print("tag: \(tag)")
			}
		
		case 7:
			currentDayIndex = daySevenNumIndex
			for index in 0..<currentDayIndex {
				
				daySevenGroup[index].textColor = UIColor.whiteColor()
				daySevenGroup[index].backgroundColor = niceBlue
				
				print("tag: \(tag)")
			}
		default:
			print("default")
		}
	}
	
	
	// Sets all of the labels to be white with blue text
	func setLabelColorsToDefault(customBlue: UIColor) {
		
		let dayOneNumIndex: Int = dayOneGroup.count
		let dayTwoNumIndex: Int = dayTwoGroup.count
		let dayThreeNumIndex: Int = dayThreeGroup.count
		let dayFourNumIndex: Int = dayFourGroup.count
		let dayFiveNumIndex: Int = dayFiveGroup.count
		let daySixNumIndex: Int = daySixGroup.count
		let daySevenNumIndex: Int = daySevenGroup.count
		
		for index in 0..<dayOneNumIndex {
			dayOneGroup[index].textColor = customBlue
			dayOneGroup[index].backgroundColor = UIColor.whiteColor()
		}
		
		for index in 0..<dayTwoNumIndex {
			dayTwoGroup[index].textColor = customBlue
			dayTwoGroup[index].backgroundColor = UIColor.whiteColor()
		}
		
		for index in 0..<dayThreeNumIndex {
			dayThreeGroup[index].textColor = customBlue
			dayThreeGroup[index].backgroundColor = UIColor.whiteColor()
		}
		
		for index in 0..<dayFourNumIndex {
			dayFourGroup[index].textColor = customBlue
			dayFourGroup[index].backgroundColor = UIColor.whiteColor()
		}
		
		for index in 0..<dayFiveNumIndex {
			dayFiveGroup[index].textColor = customBlue
			dayFiveGroup[index].backgroundColor = UIColor.whiteColor()
		}
		
		for index in 0..<daySixNumIndex {
			daySixGroup[index].textColor = customBlue
			daySixGroup[index].backgroundColor = UIColor.whiteColor()
		}
		
		for index in 0..<daySevenNumIndex {
			daySevenGroup[index].textColor = customBlue
			daySevenGroup[index].backgroundColor = UIColor.whiteColor()
		}
	}
	
	
	
	
	// used for clearing all blocks
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
	
	// Clears the schedule
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
}



