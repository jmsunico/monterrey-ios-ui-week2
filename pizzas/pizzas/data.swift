//
//  data.swift
//  pizzas
//
//  Created by José-María Súnico on 20160707.
//  Copyright © 2016 José-María Súnico. All rights reserved.
//

public enum Quesos : String{
	case NA = "N/A"
	case Q1 = "Q1"
	case Q2 = "Q2"
	init() {
		self = .NA
	}
	func getMembers() -> [String]{
		return ["Q1", "Q2"]
	}
}

public enum Masas : String{
	case
	NA = "N/A",
	M1 = "M1",
	M2 = "M2"
	
	init() {
		self = .NA
	}
	
	func getMembers() -> [String]{
		return ["M1", "M2"]
	}
}
public enum Tamaños : String{
	case
	NA = "N/A",
	T1 = "T1",
	T2 = "T2"
	init() {
		self = .NA
	}
	func getMembers() -> [String]{
		return ["T1", "T2"]
	}
}
public enum Ingredientes : String{
	case
	NA = "N/A",
	I1 = "I1",
	I2 = "I2"
	init() {
		self = .NA
	}
	func getMembers() -> [String]{
		return ["I1", "I2"]
	}
}

public struct Pedido{
	var queso : Quesos
	var masa : Masas
	var tamaño : Tamaños
	var ingredientes : [Ingredientes]
	public init(){
		self.tamaño = Tamaños()
		self.masa = Masas()
		self.queso = Quesos()
		self.ingredientes = [Ingredientes()]
	}
}
