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
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		print("Pantalla principal: Hemos hecho los siguientes pedidos:")
		for i in 0..<logPedidos.count{
			print(i, logPedidos[i])
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

