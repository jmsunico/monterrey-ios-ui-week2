//
//  OrderConfirmation.swift
//  pizzas
//
//  Created by José-María Súnico on 20160707.
//  Copyright © 2016 José-María Súnico. All rights reserved.
//

import UIKit

class OrderConfirmation: UIViewController {
	var pedidoActual : Pedido?
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
		print("Confirmation: pedidoActual=", pedidoActual)
	}
	
	override func viewDidAppear(animated: Bool) {
		// Do any additional step after the view.
	}
	
	// Preparation before navigation
	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		// Get the new view controller using segue.destinationViewController.
		
		if sender?.name == ""{
			let selection1 = segue.destinationViewController as! Selection_1
			// Pass the selected object to the new view controller.
			selection1.pedidoActual = self.pedidoActual
		} else{
			logPedidos.append(pedidoActual!)
		}
	}
	
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
}
