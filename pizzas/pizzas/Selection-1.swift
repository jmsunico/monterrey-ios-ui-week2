//
//  Selection-1.swift
//  pizzas
//
//  Created by José-María Súnico on 20160707.
//  Copyright © 2016 José-María Súnico. All rights reserved.
//
// SELECTION_1 TAMAÑO

import UIKit

class Selection_1: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
	var pedidoActual : [Array<String>] = []
	var Tamaños = [["Pequeña", "Mediana", "Grande"]]

	@IBOutlet weak var sizePicker: UIPickerView!
	
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
		sizePicker.delegate = self
		sizePicker.dataSource = self
		sizePicker.selectRow(0, inComponent: 0, animated: false)
		pedidoActual[0] = [Tamaños[0][0]]
    }
	
	override func viewDidAppear(animated: Bool) {
		// Do any additional step after the view appears.
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
		return Tamaños.count
	}
	
	func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
		return Tamaños[component].count
	}
	
	func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
		return Tamaños[component][row]
	}
	
	func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
		var aux : [String] = []
		for i in 0..<Tamaños.count{
			aux.append(Tamaños[i][sizePicker.selectedRowInComponent(i)])
		}
		pedidoActual[0] = aux
	}
}