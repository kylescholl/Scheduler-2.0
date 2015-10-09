//
//  AddItemViewController.swift
//  Scheduler 1.0
//
//  Created by Kyle Scholl on 10/9/15.
//  Copyright © 2015 Patronus LLC. All rights reserved.
//

import UIKit

protocol AddItemViewControllerDelegate {
	func controller(controller: AddItemViewController, didAddItem: String)
}

class AddItemViewController: UIViewController {
	
	@IBOutlet var ABlock: UITextField!
	@IBOutlet var BBlock: UITextField!
	@IBOutlet var CBlock: UITextField!
	@IBOutlet var DBlock: UITextField!
	@IBOutlet var EBlock: UITextField!
	@IBOutlet var FBlock: UITextField!
	
	var delegate: AddItemViewControllerDelegate?
	
	
	@IBAction func save(sender: AnyObject) {
		self.dismissViewControllerAnimated(true, completion: nil)
	}
	
	@IBAction func create(sender: AnyObject) {
		let ABlockText = self.ABlock.text
		let BBlockText = self.BBlock.text
		let CBlockText = self.CBlock.text
		let DBlockText = self.DBlock.text
		let EBlockText = self.EBlock.text
		let FBlockText = self.FBlock.text
		
		if let delegate = self.delegate {
			delegate.controller(self, didAddItem: ABlockText!)
			delegate.controller(self, didAddItem: BBlockText!)
			delegate.controller(self, didAddItem: CBlockText!)
			delegate.controller(self, didAddItem: DBlockText!)
			delegate.controller(self, didAddItem: EBlockText!)
			delegate.controller(self, didAddItem: FBlockText!)
		}
	}
	
	
	
	
	
	
	
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
