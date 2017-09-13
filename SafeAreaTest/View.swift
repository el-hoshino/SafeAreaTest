//
//  View.swift
//  SafeAreaTest
//
//  Created by 史　翔新 on 2017/09/13.
//  Copyright © 2017年 Crazism. All rights reserved.
//

import UIKit

class View: UIView {
	
	let subview: UIView = .init()
	let grandsubview: UIView = .init()
	
	override func didMoveToSuperview() {
		super.didMoveToSuperview()
		self.addSubview(self.subview)
		self.subview.addSubview(self.grandsubview)
		self.backgroundColor = .blue
		self.subview.backgroundColor = .red
		self.grandsubview.backgroundColor = .green
	}
	
	override func layoutSubviews() {
		super.layoutSubviews()
		self.subview.frame = self.centeredFrame(inside: self.bounds)
		self.grandsubview.frame = self.centeredFrame(inside: self.subview.bounds)
	}
	
}

extension View {
	
	func centeredFrame(inside bounds: CGRect) -> CGRect {
		
		var frame = bounds
		frame.origin.x += 10
		frame.origin.y += 10
		frame.size.width -= 20
		frame.size.height -= 20
		return frame
		
	}
	
}
