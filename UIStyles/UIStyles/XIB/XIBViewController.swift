//
//  XIBViewController.swift
//  UIStyles
//
//  Created by Breno Angelotti on 21/02/23.
//

import UIKit

class XIBViewController: UIViewController {
	
	init() {
		super.init(nibName: "xibView", bundle: nil)
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		title = "XIB"
	}
	
	@IBAction func showAlertButtonTapped(_ sender: Any) {
		showDemoAlert()
	}
}
