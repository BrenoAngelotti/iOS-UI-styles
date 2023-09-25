//
//  UIViewController+Extensions.swift
//  UIStyles
//
//  Created by Breno Angelotti on 21/02/23.
//

import UIKit

extension UIViewController {
	func showDemoAlert() {
		let alert = UIAlertController(title: "Alerta", message: "Isso é um alerta", preferredStyle: .alert)
		
		let backHomeAction = UIAlertAction(title: "Voltar", style: .destructive) { [weak self] _ in
			self?.navigationController?.popViewController(animated: true)
		}
		
		let cancelAction = UIAlertAction(title: "Cancelar", style: .cancel)
		
		alert.addAction(backHomeAction)
		alert.addAction(cancelAction)
		
		navigationController?.present(alert, animated: true)
	}
}
