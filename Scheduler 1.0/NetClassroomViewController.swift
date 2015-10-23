//
//  NetClassroomViewController.swift
//  Scheduler 2.0
//
//  Created by Kyle Scholl on 10/23/15.
//  Copyright © 2015 Patronus LLC. All rights reserved.
//

import UIKit

/*
protocol AddItemViewControllerDelegate {
	func aBlockController(aBlockController: AddItemViewController, aBlockItem: String)
}
*/


class NetClassroomViewController: UIViewController {
	
	var delegate: NetClassroomViewController?
		
	@IBOutlet var webView: UIWebView!
	
	
	@IBAction func done(sender: UIBarButtonItem) {
			self.dismissViewControllerAnimated(true, completion: nil)
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		let url = NSURL (string:
			"http://netclassroom.sch.org/NetClassroom7/Forms/login.aspx?ReturnUrl=%2fNetClassroom7%2fForms%2fNCShell.aspx"
						);
		let requestObj = NSURLRequest(URL: url!);
		webView.loadRequest(requestObj);
		
	}
	
	@IBAction func refresh(sender: AnyObject) {
		targetForAction(addTarget:action:forControlEvents:, withSender: <#T##AnyObject?#>)
		
	}
	
	
	

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

















