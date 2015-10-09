//
//  AddItemViewController.swift
//  Scheduler 1.0
//
//  Created by Kyle Scholl on 10/9/15.
//  Copyright © 2015 Patronus LLC. All rights reserved.
//

import UIKit

class AddItemViewController: UIViewController {
	
	@IBOutlet var ABlock: UITextField!
	@IBOutlet var BBlock: UITextField!
	@IBOutlet var CBlock: UITextField!
	@IBOutlet var DBlock: UITextField!
	@IBOutlet var EBlock: UITextField!
	@IBOutlet var FBlock: UITextField!
	
	
	@IBAction func cancel(sender: AnyObject) {
		
	}
	
	@IBAction func create(sender: AnyObject) {
		
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
