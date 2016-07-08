//
//  ViewController.swift
//  pizzas
//
//  Created by José-María Súnico on 20160707.
//  Copyright © 2016 José-María Súnico. All rights reserved.
//

import UIKit

var  logPedidos : [Array<Array<String>>] = []

class ViewController: UIViewController {
	
	@IBOutlet weak var ordersLog: UITextView!
	@IBOutlet weak var pizzaImage: UIImageView!
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		self.pizzaImage.image = UIImage(named: "pizzaTypes")

		var aux = ""
		print(logPedidos)
		ordersLog.text = ""
		for i in 0..<logPedidos.count{
			var log = logPedidos[i]
			aux = String(i) + " -> Pizza " + log[0][0]
			aux = aux + ", masa " + log[1][0]
			aux = aux + ", queso " + log[2][0]
			for j in 0..<log[3].count{
				aux = aux + ", " + log[3][j]
			}
			aux = aux + "\n"
			ordersLog.text = ordersLog.text.stringByAppendingString(aux)
		}
	}
	
	override func viewDidAppear(animated: Bool) {
		// Do any additional step after the view appears.
	}
	
	// Preparation before navigation
	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		// Get the new view controller using segue.destinationViewController.
		let selection1 = segue.destinationViewController as! Selection_1
		
		// Pass the selected object to the new view controller.
		selection1.pedidoActual = [[""], [""], [""], [""]]
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
}

