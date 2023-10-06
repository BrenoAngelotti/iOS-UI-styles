//
//  UIViewController+Extensions.swift
//  UIStyles
//
//  Created by Breno Angelotti on 21/02/23.
//

import UIKit

extension UIViewController {
	func showDemoAlert() {
		let alertTitle = String(localized: "alert-title")
		let alertMessage = String(localized: "alert-message")
		
		let alert = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: .alert)
		
		let returnText = String(localized: "return")
		let backHomeAction = UIAlertAction(title: returnText, style: .destructive) { [weak self] _ in
			self?.navigationController?.popViewController(animated: true)
		}
		
		let cancelText = String(localized: "cancel")
		let cancelAction = UIAlertAction(title: cancelText, style: .cancel)
		
		alert.addAction(backHomeAction)
		alert.addAction(cancelAction)
		
		navigationController?.present(alert, animated: true)
	}
}
