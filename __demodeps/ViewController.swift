//
//  ViewController.swift
//  __demodeps
//
//  Created by teanet on 25.11.2022.
//

import UIKit
import VNI

class ViewController: UIViewController {

	let contaner = AppContaner()

	override func viewDidLoad() {
		super.viewDidLoad()

		print(">>>>>\(contaner.search.placeholder)")

		print(">>>>>\(contaner.search.searchResultsProvider.results)")
		// Do any additional setup after loading the view.
	}
}

