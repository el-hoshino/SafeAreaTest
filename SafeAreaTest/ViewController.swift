//
//  ViewController.swift
//  SafeAreaTest
//
//  Created by 史　翔新 on 2017/09/13.
//  Copyright © 2017年 Crazism. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	override func loadView() {
		let view = View(frame: UIScreen.main.bounds)
		view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
		self.view = view
	}

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	override func viewDidLayoutSubviews() {
		super.viewDidLayoutSubviews()
		print("self: \(self.view.safeAreaInsets)")
		print("sub: \((self.view as! View).subview.safeAreaInsets)")
		print("grand: \((self.view as! View).grandsubview.safeAreaInsets)")
	}

}

