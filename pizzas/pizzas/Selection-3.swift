//
//  Selection-3.swift
//  pizzas
//
//  Created by José-María Súnico on 20160707.
//  Copyright © 2016 José-María Súnico. All rights reserved.
//

import UIKit

class Selection_3: UIViewController {
	var pedidoActual : Pedido?

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
		print("Selection3: pedidoActual=", self.pedidoActual)
	}
	
	override func viewDidAppear(animated: Bool) {
		// Do any additional step after the view appears.
		pedidoActual!.queso = .Q1
	}
	
	// Preparation before navigation
	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		// Get the new view controller using segue.destinationViewController.
		let selection4 = segue.destinationViewController as! Selection_4
		
		// Pass the selected object to the new view controller.
		selection4.pedidoActual = self.pedidoActual
	}
	
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

}
