//
//  Selection-3.swift
//  pizzas
//
//  Created by José-María Súnico on 20160707.
//  Copyright © 2016 José-María Súnico. All rights reserved.
//

import UIKit

class Selection_3: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
	var pedidoActual : [Array<String>] = []
	var Quesos = [["Mozarella", "Cheddar", "Parmesano", "Sin queso"]]
	@IBOutlet weak var cheesePicker: UIPickerView!
	
	@IBOutlet weak var pizzaCheese: UIImageView!
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}
	
	override func viewDidAppear(animated: Bool) {
		// Do any additional step after the view appears.
		self.pizzaCheese.image = UIImage(named: "pizzaCheeses")

		cheesePicker.delegate = self
		cheesePicker.dataSource = self
		cheesePicker.selectRow(0, inComponent: 0, animated: false)
		pedidoActual[2] = [Quesos[0][0]]
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
	
	
	func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
		return Quesos.count
	}
	
	func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
		return Quesos[component].count
	}
	
	func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
		return Quesos[component][row]
	}
	
	func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
		var aux : [String] = []
		for i in 0..<Quesos.count{
			aux.append(Quesos[i][cheesePicker.selectedRowInComponent(i)])
		}
		pedidoActual[2] = aux
	}

}
