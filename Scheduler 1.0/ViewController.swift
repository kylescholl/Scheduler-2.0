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
		print("aBlockItem: \(aBlockItem)")
		
		let numOfBlocks: Int = (aBlockLabelCollection.count)
		print("numOfABlocks: \(numOfBlocks)")
		
		for index in 0..<numOfBlocks {
			aBlockLabelCollection[index].text = aBlockItem
			print("index: \(index)")
		}
		saveSchedule()
	}
	
	func bBlockController(bBlockController: AddItemViewController, bBlockItem: String){
		let numOfBlocks: Int = bBlockLabelCollection.count
		for index in 0..<numOfBlocks {
			bBlockLabelCollection[index].text = bBlockItem
		}
		saveSchedule()
	}
	
	func cBlockController(cBlockController: AddItemViewController, cBlockItem: String){
		let numOfBlocks: Int = cBlockLabelCollection.count
		print("numOfABlocks: \(numOfBlocks)")
		
		for index in 0..<numOfBlocks {
			cBlockLabelCollection[index].text = cBlockItem
		}
		saveSchedule()
	}
	
	func dBlockController(dBlockController: AddItemViewController, dBlockItem: String){
		let numOfBlocks: Int = dBlockLabelCollection.count
		for index in 0..<numOfBlocks {
			dBlockLabelCollection[index].text = dBlockItem
		}
		saveSchedule()
	}
	
	func eBlockController(eBlockController: AddItemViewController, eBlockItem: String){
		let numOfBlocks: Int = eBlockLabelCollection.count
		for index in 0..<numOfBlocks {
			eBlockLabelCollection[index].text = eBlockItem
		}
		saveSchedule()
	}
	
	func fBlockController(fBlockController: AddItemViewController, fBlockItem: String){
		let numOfBlocks: Int = fBlockLabelCollection.count
		for index in 0..<numOfBlocks {
			fBlockLabelCollection[index].text = fBlockItem
		}
		saveSchedule()
	}
	
	func gBlockController(gBlockController: AddItemViewController, gBlockItem: String){
		let numOfBlocks: Int = gBlockLabelCollection.count
		for index in 0..<numOfBlocks {
			gBlockLabelCollection[index].text = gBlockItem
		}
		saveSchedule()
	}
	
	
	//robotics
	@IBOutlet var aBlockLabelCollection: [UILabel]!
	
	//coding
	@IBOutlet var bBlockLabelCollection: [UILabel]!
	
	//free / college counseling
	@IBOutlet var cBlockLabelCollection: [UILabel]!
	
	//english
	@IBOutlet var dBlockLabelCollection: [UILabel]!
	
	//science
	@IBOutlet var eBlockLabelCollection: [UILabel]!
	
	//math
	@IBOutlet var fBlockLabelCollection: [UILabel]!
	
	//history
	@IBOutlet var gBlockLabelCollection: [UILabel]!
	
	
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
		
		let aBlockDefaults = NSKeyedArchiver.archivedDataWithRootObject(aBlockLabelCollection)
		NSUserDefaults.standardUserDefaults().setObject(aBlockDefaults, forKey: "ABlock")
		
		let bBlockDefaults = NSKeyedArchiver.archivedDataWithRootObject(bBlockLabelCollection)
		NSUserDefaults.standardUserDefaults().setObject(bBlockDefaults, forKey: "BBlock")
		
		let cBlockDefaults = NSKeyedArchiver.archivedDataWithRootObject(cBlockLabelCollection)
		NSUserDefaults.standardUserDefaults().setObject(cBlockDefaults, forKey: "CBlock")
		
		let dBlockDefaults = NSKeyedArchiver.archivedDataWithRootObject(dBlockLabelCollection)
		NSUserDefaults.standardUserDefaults().setObject(dBlockDefaults, forKey: "DBlock")
		
		let eBlockDefaults = NSKeyedArchiver.archivedDataWithRootObject(eBlockLabelCollection)
		NSUserDefaults.standardUserDefaults().setObject(eBlockDefaults, forKey: "EBlock")
		
		let fBlockDefaults = NSKeyedArchiver.archivedDataWithRootObject(fBlockLabelCollection)
		NSUserDefaults.standardUserDefaults().setObject(fBlockDefaults, forKey: "FBlock")
		
		let gBlockDefaults = NSKeyedArchiver.archivedDataWithRootObject(gBlockLabelCollection)
		NSUserDefaults.standardUserDefaults().setObject(gBlockDefaults, forKey: "GBlock")
	}
	
	func loadSchedule(){
		
		// Each key for arrays
		let aBlockDefaults = NSUserDefaults.standardUserDefaults().objectForKey("ABlock") as? String
		let bBlockDefaults = NSUserDefaults.standardUserDefaults().objectForKey("BBlock") as? String
		let cBlockDefaults = NSUserDefaults.standardUserDefaults().objectForKey("CBlock") as? String
		let dBlockDefaults = NSUserDefaults.standardUserDefaults().objectForKey("DBlock") as? String
		let eBlockDefaults = NSUserDefaults.standardUserDefaults().objectForKey("EBlock") as? String
		let fBlockDefaults = NSUserDefaults.standardUserDefaults().objectForKey("FBlock") as? String
		let gBlockDefaults = NSUserDefaults.standardUserDefaults().objectForKey("GBlock") as? String
		
		// Last indexes of each array
		let aLastIndex = aBlockLabelCollection.endIndex
		let bLastIndex = bBlockLabelCollection.endIndex
		let cLastIndex = cBlockLabelCollection.endIndex
		let dLastIndex = dBlockLabelCollection.endIndex
		let eLastIndex = eBlockLabelCollection.endIndex
		let fLastIndex = fBlockLabelCollection.endIndex
		let gLastIndex = gBlockLabelCollection.endIndex
		
		// A
		for index in 0...aLastIndex {
			aBlockLabelCollection[index].text = aBlockDefaults
		}
		
		// B
		for index in 0...bLastIndex {
			bBlockLabelCollection[index].text = bBlockDefaults
		}
		
		// C
		for index in 0...cLastIndex {
			cBlockLabelCollection[index].text = cBlockDefaults
		}
		
		// D
		for index in 0...dLastIndex {
			dBlockLabelCollection[index].text = dBlockDefaults
		}
		
		// E
		for index in 0...eLastIndex {
			eBlockLabelCollection[index].text = eBlockDefaults
		}
		
		// F
		for index in 0...fLastIndex {
			fBlockLabelCollection[index].text = fBlockDefaults
		}
		
		// G
		for index in 0...gLastIndex {
			gBlockLabelCollection[index].text = gBlockDefaults
		}
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		// Storage
		//	loadSchedule()
		
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



