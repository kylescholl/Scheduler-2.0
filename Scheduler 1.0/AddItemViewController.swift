//
//  AddItemViewController.swift
//  Scheduler 1.0
//
//  Created by Kyle Scholl on 10/9/15.
//  Copyright © 2015 Patronus LLC. All rights reserved.
//

import UIKit

protocol AddItemViewControllerDelegate {
	//func controller(controller: AddItemViewController, didAddItem: String)
	//func myController(myController: AddItemViewController)
	
	func aBlockController(aBlockController: AddItemViewController, aBlockItem: String)
	func bBlockController(bBlockController: AddItemViewController, bBlockItem: String)
	func cBlockController(cBlockController: AddItemViewController, cBlockItem: String)
	func dBlockController(dBlockController: AddItemViewController, dBlockItem: String)
	func eBlockController(eBlockController: AddItemViewController, eBlockItem: String)
	func fBlockController(fBlockController: AddItemViewController, fBlockItem: String)
	func gBlockController(gBlockController: AddItemViewController, gBlockItem: String)
	
}

class AddItemViewController: UIViewController, UITextFieldDelegate {
	
	@IBOutlet var ABlock: UITextField?
	@IBOutlet var BBlock: UITextField?
	@IBOutlet var CBlock: UITextField?
	@IBOutlet var DBlock: UITextField?
	@IBOutlet var EBlock: UITextField?
	@IBOutlet var FBlock: UITextField?
	@IBOutlet var GBlock: UITextField?
	
	var delegate: AddItemViewControllerDelegate?
	
	@IBAction func save(sender: UIBarButtonItem) {
		self.dismissViewControllerAnimated(true, completion: nil)
	}
	
	@IBAction func create(sender: AnyObject) {
		
		let ABlockText : String = self.ABlock!.text!
		print("ABlockText: \(ABlockText)")
		
		let BBlockText : String = self.BBlock!.text!
		print("BBlockText: \(BBlockText)")
		
		let CBlockText : String = self.CBlock!.text!
		print("CBlockText: \(CBlockText)")
		
		let DBlockText : String = self.DBlock!.text!
		print("DBlockText: \(DBlockText)")
		
		let EBlockText : String = self.EBlock!.text!
		print("EBlockText: \(EBlockText)")
		
		let FBlockText : String = self.FBlock!.text!
		print("FBlockText: \(FBlockText)")
		
		let GBlockText : String = self.GBlock!.text!
		print("GBlockText: \(GBlockText)")
		
		if let delegate = self.delegate {
			if ABlock?.editing == true {
				delegate.aBlockController(self, aBlockItem: ABlockText)
				print("ABlock?.editing == true worked")
			} else if BBlock?.editing == true {
				delegate.bBlockController(self, bBlockItem: BBlockText)
			}
			delegate.cBlockController(self, cBlockItem: CBlockText)
			print("cBlockController worked (app didn't crash)")
			
			//	delegate.myController(self)
		}
		
		
/*
		if let delegate = self.delegate {
			delegate.controller(self, didAddItem: ABlockText)
			delegate.controller(self, didAddItem: BBlockText)
			delegate.controller(self, didAddItem: CBlockText)
			delegate.controller(self, didAddItem: DBlockText)
			delegate.controller(self, didAddItem: EBlockText)
			delegate.controller(self, didAddItem: FBlockText)
		}
*/
	}
	
	
	/*
	func textFieldShouldReturn(textField: UITextField) -> Bool {
		//textField.resignFirstResponder()
		self.view.endEditing(true)
		return true;
	}
	*/
	
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
