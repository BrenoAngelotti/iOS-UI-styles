//
//  ViewCodeViewController.swift
//  UIStyles
//
//  Created by Breno Angelotti on 21/02/23.
//

import UIKit

class ViewCodeViewController: UIViewController {
	
	lazy var showAlertButton: UIButton = {
		let button = UIButton(configuration: .gray())
		button.translatesAutoresizingMaskIntoConstraints = false
		let alertTitle = String(localized: "show-alert")
		button.setTitle(alertTitle, for: .normal)
		button.addTarget(self, action: #selector(showAlertButtonTapped), for: .touchUpInside)
		return button
	}()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		title = String(localized: "view-code")
		view.backgroundColor = .systemBackground
		setupViews()
		setupConstraints()
	}
	
	@objc
	func showAlertButtonTapped() {
		showDemoAlert()
	}
	
	func setupViews() {
		view.addSubview(showAlertButton)
	}
	
	func setupConstraints() {
		NSLayoutConstraint.activate(
			[
				showAlertButton.topAnchor.constraint(greaterThanOrEqualTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
				showAlertButton.bottomAnchor.constraint(lessThanOrEqualTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
				showAlertButton.leadingAnchor.constraint(greaterThanOrEqualTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
				showAlertButton.trailingAnchor.constraint(lessThanOrEqualTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
				showAlertButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
				showAlertButton.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor)
			]
		)
	}
}
