//
//  Selection-1.swift
//  pizzas
//
//  Created by José-María Súnico on 20160707.
//  Copyright © 2016 José-María Súnico. All rights reserved.
//
// SELECTION_1 TAMAÑO

import UIKit

class Selection_1: UIViewController {
	var pedidoActual : Pedido?
	
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
		print("Selection1: pedidoActual=", self.pedidoActual)
    }
	
	override func viewDidAppear(animated: Bool) {
		// Do any additional step after the view appears.
		pedidoActual!.tamaño = .T1
	}
	
	
	// Preparation before navigation
	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		// Get the new view controller using segue.destinationViewController.
		let selection2 = segue.destinationViewController as! Selection_2

		// Pass the selected object to the new view controller.
		selection2.pedidoActual = self.pedidoActual
	}
	
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	
	func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
		return 1
	}
	
	func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
		
		return pedidoActual!.tamaño.getMembers().count
	}
	
	func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
		
		return pedidoActual!.tamaño.getMembers()[row]
	}
	
	func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView?) -> UIView {
		
		let pickerLabel = UILabel()
		
		pickerLabel.textColor = UIColor.blackColor()
		pickerLabel.text = pedidoActual!.tamaño.getMembers()[row]
		pickerLabel.font = UIFont(name: "Verdana", size: 13)
		pickerLabel.textAlignment = NSTextAlignment.Center
		
		
		
		
		
		return pickerLabel
	}
	
	
	func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
		//prepareForSegue(Selection_2, sender: UIPickerView) // XXXXXX sender???
	}
}
