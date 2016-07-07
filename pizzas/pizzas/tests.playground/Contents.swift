//: Playground - noun: a place where people can play

import UIKit

enum Quesos : String{
	case NA = "N/A"
	case Q1 = "Q1"
	case Q2 = "Q2"
	init() {
		self = .NA
	}
	func getMembers() -> [String]{
		return ["M1", "M2"]
	}
}

enum Masas : String{
	case
	NA = "N/A",
	M1 = "M1",
	M2 = "M2"
	
	init() {
		self = .NA
	}
	
	func getMembers() -> [String]{
		var membersArray : [String]
		for member in Masas.getMembers(self) {
			membersArray.append(i.rawvalue)
		}
		return a
	}
}
enum Tamaños : String{
	case
	NA = "N/A",
	T1 = "T1",
	T2 = "T2"
	init() {
		self = .NA
	}
	func getMembers() -> [String]{
		return ["M1", "M2"]
	}
}
enum Ingredientes : String{
	case
	NA = "N/A",
	I1 = "I1",
	I2 = "I2"
	init() {
		self = .NA
	}
	func getMembers() -> [String]{
		return ["M1", "M2"]
	}
}

struct Pedido{
	var queso : Quesos
	var masa : Masas
	var tamaño : Tamaños
	var ingredientes : [Ingredientes]
	init(){
		self.tamaño = Tamaños()
		self.masa = Masas()
		self.queso = Quesos()
		self.ingredientes = [Ingredientes()]
	}
	func getMembers() -> [String]{
		return ["M1", "M2"]
	}
}

var queso = Quesos.Q1
print(queso.rawValue)

	

var pedido = Pedido()

print(pedido)