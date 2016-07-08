//
//  Selection-4.swift
//  pizzas
//
//  Created by José-María Súnico on 20160707.
//  Copyright © 2016 José-María Súnico. All rights reserved.
//

import UIKit

class Selection_4: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
	var pedidoActual : [Array<String>] = []
	var Ingredientes = [
		["Anchoas", "Atún", "Champiñón", "Jamón","Pepperoni", "Pimiento", "Piña", "Pollo", "Salmón", "Tomate"],
		["Anchoas", "Atún", "Champiñón", "Jamón","Pepperoni", "Pimiento", "Piña", "Pollo", "Salmón", "Tomate"],
		["Anchoas", "Atún", "Champiñón", "Jamón","Pepperoni", "Pimiento", "Piña", "Pollo", "Salmón", "Tomate"]]
	@IBOutlet weak var ingredPicker: UIPickerView!
	@IBOutlet weak var pizzaIngredients: UIImageView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
		self.pizzaIngredients.image = UIImage(named: "pizzaIngredients")

		ingredPicker.delegate = self
		ingredPicker.dataSource = self
		ingredPicker.selectRow(0, inComponent: 0, animated: false)
		pedidoActual[3] = [Ingredientes[0][0], Ingredientes[0][0], Ingredientes[0][0]]
	}
	
	override func viewDidAppear(animated: Bool) {
		// Do any additional step after the view appears.

	}
	
	// Preparation before navigation
	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		// Get the new view controller using segue.destinationViewController.
		let confirmation = segue.destinationViewController as! OrderConfirmation
		
		// Pass the selected object to the new view controller.
		confirmation.pedidoActual = self.pedidoActual
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
		return Ingredientes.count
	}
	
	func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
		return Ingredientes[component].count
	}
	
	func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
		return Ingredientes[component][row]
	}
	
	func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
		var aux : [String] = []
		for i in 0..<Ingredientes.count{
			aux.append(Ingredientes[i][ingredPicker.selectedRowInComponent(i)])
		}
		pedidoActual[3] = aux
	}
}
