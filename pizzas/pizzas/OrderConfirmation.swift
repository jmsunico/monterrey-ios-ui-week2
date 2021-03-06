//
//  OrderConfirmation.swift
//  pizzas
//
//  Created by José-María Súnico on 20160707.
//  Copyright © 2016 José-María Súnico. All rights reserved.
//

import UIKit

class OrderConfirmation: UIViewController {
	var pedidoActual : [[String]] = [[]]
	
	@IBOutlet weak var pizzaInBox: UIImageView!
	@IBOutlet weak var pizzaOrder: UITextView!
	@IBAction func processOrder(sender: UIButton) {
		
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
		self.pizzaInBox.image = UIImage(named: "pizzaBox")

		var confMessage = ""
		confMessage = confMessage + "PIZZA ELEGIDA.-\n"
		confMessage = confMessage + "\nTamaño:\t" + pedidoActual[0][0]
		confMessage = confMessage + "\nMasa:\t" + pedidoActual[1][0]
		confMessage = confMessage + "\nQueso:\t" + pedidoActual[2][0]
		confMessage = confMessage + "\nOtros ingredientes:\t"
		for i in 0..<pedidoActual[3].count{
			confMessage = confMessage + pedidoActual[3][i] + " "
		}
		print(confMessage)
		pizzaOrder.text = confMessage
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
			logPedidos.append(pedidoActual)
		}
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
}
