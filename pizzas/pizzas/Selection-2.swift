//
//  Selection-2.swift
//  pizzas
//
//  Created by José-María Súnico on 20160707.
//  Copyright © 2016 José-María Súnico. All rights reserved.
//

import UIKit

class Selection_2: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
	var pedidoActual : [Array<String>] = []
	var Masas   = [["Fina", "Gruesa", "Crujiente"]]
	@IBOutlet weak var massPicker: UIPickerView!
	
	@IBOutlet weak var pizzaMass: UIImageView!
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
		self.pizzaMass.image = UIImage(named: "pizzaMasses")

		massPicker.delegate = self
		massPicker.dataSource = self
		massPicker.selectRow(0, inComponent: 0, animated: false)
		pedidoActual[1] = [Masas[0][0]]
	}
	
	override func viewDidAppear(animated: Bool) {
		// Do any additional step after the view appears.
	}
	
	// Preparation before navigation
	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		// Get the new view controller using segue.destinationViewController.
		let selection3 = segue.destinationViewController as! Selection_3
		
		// Pass the selected object to the new view controller.
		selection3.pedidoActual = self.pedidoActual
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	
	func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
		return Masas.count
	}
	
	func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
		return Masas[component].count
	}
	
	func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
		return Masas[component][row]
	}
	
	func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
		var aux : [String] = []
		for i in 0..<Masas.count{
			aux.append(Masas[i][massPicker.selectedRowInComponent(i)])
		}
		pedidoActual[1] = aux
	}
	
	
	
	
}
