//
//  ViewController.swift
//  Scheduler 1.0
//
//  Created by Kyle Scholl on 10/8/15.
//  Copyright © 2015 Patronus LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet var editScheduleButton: UIButton!
	
	
	
	
	@IBAction func editSchedule(sender: AnyObject) {
		
		
		
	}
	
	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		if (segue.identifier == "addItem") {
			let AddItemViewController = segue.destinationViewController
		}
	}
	
	@IBAction func textEntered(sender: AnyObject) {
		
		//
		
		
	}
	
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		print("Storyboard dimmension: 375 x 667");
		updateSchedule()
		
/*
		let defaults = NSUserDefaults.standardUserDefaults()
		// Yup, problem is here. "...Property list invalid for format: 200 (property lists cannot contain objects of type 'CFType')..."
		defaults.setObject(ABlock, forKey: "ABlock")
		defaults.setObject(BBlock, forKey: "BBlock")
		defaults.setObject(CBlock, forKey: "CBlock")
		defaults.setObject(DBlock, forKey: "DBlock")
		defaults.setObject(EBlock, forKey: "EBlock")
		defaults.setObject(FBlock, forKey: "FBlock")
		defaults.synchronize()
*/
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
	}
	
	func updateSchedule(){
		/*
		let defaults = NSUserDefaults.standardUserDefaults()
		ABlock.value = defaults.valueForKey("ABlock")
		BBlock.value = defaults.valueForKey("BBlock")
		CBlock.value = defaults.valueForKey("CBlock")
		DBlock.value = defaults.valueForKey("DBlock")
		EBlock.value = defaults.valueForKey("EBlock")
		FBlock.value = defaults.valueForKey("FBlock") */
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



