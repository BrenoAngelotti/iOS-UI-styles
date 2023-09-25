//
//  MainViewController.swift
//  UIStyles
//
//  Created by Breno Angelotti on 21/02/23.
//

import UIKit
import SwiftUI

class MainViewController: UIViewController {

	@IBAction func xibButtonTapped(_ sender: Any) {
		let vc = XIBViewController()
		navigationController?.pushViewController(vc, animated: true)
	}
	
	@IBAction func viewCodeTapped(_ sender: Any) {
		let vc = ViewCodeViewController()
		navigationController?.pushViewController(vc, animated: true)
	}
	
	@IBAction func swiftuiButtonTapped(_ sender: Any) {
		let vc = UIHostingController(rootView: SwiftUIView(dismissAction: { [weak self] in
			self?.navigationController?.popViewController(animated: true)
		}))
//		vc.title = "SwiftUI"
		navigationController?.pushViewController(vc, animated: true)
	}
}

