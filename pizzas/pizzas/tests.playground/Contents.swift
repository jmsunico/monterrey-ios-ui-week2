//: Playground - noun: a place where people can play

import UIKit

var q = Quesos.NA
print(q)


var pedido = Pedido()

print(pedido)

pedido.queso = .Q1
pedido.ingredientes.append(Ingredientes.I1)
print(pedido)
print ("-")
for i in pedido.ingredientes{
	print(i)
}

pedido.tamaño.getMembers()
