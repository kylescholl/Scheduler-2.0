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
	}
	
	func loadSchedule(){
		
		let defaults = NSUserDefaults.standardUserDefaults()
		
		// Last indexes of each array
		let aLastIndex = aBlockLabelCollection.count
		let bLastIndex = bBlockLabelCollection.count
		let cLastIndex = cBlockLabelCollection.count
		let dLastIndex = dBlockLabelCollection.count
		let eLastIndex = eBlockLabelCollection.count
		let fLastIndex = fBlockLabelCollection.count
		let gLastIndex = gBlockLabelCollection.count
		
		// A
		for index in 0..<aLastIndex {
			aBlockLabelCollection[index].text = defaults.stringForKey("ABlock")
		}

		// B
		for index in 0..<bLastIndex {
			bBlockLabelCollection[index].text = defaults.stringForKey("BBlock")
		}
		
		// C
		for index in 0..<cLastIndex {
			cBlockLabelCollection[index].text = defaults.stringForKey("CBlock")
		}
		
		// D
		for index in 0..<dLastIndex {
			dBlockLabelCollection[index].text = defaults.stringForKey("DBlock")
		}
		
		// E
		for index in 0..<eLastIndex {
			eBlockLabelCollection[index].text = defaults.stringForKey("EBlock")
		}
		
		// F
		for index in 0..<fLastIndex {
			fBlockLabelCollection[index].text = defaults.stringForKey("FBlock")
		}
		
		// G
		for index in 0..<gLastIndex {
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



