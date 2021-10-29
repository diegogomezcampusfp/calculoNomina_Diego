Funcion sueldo(tipoContrato, salarioBruto,edadf, mesf)
	//declarar variables - tipado fuerte
	Definir  tipoCotizacion, tipoIRPF, salarioNeto, bonificacion, salarioBonificacion Como Real
	definir edad, mes Como Entero

	Segun tipoContrato Hacer
		caso 'I':tipoIRPF<-0.12
		caso 'P':tipoIRPF<-0.08
		caso 'T':tipoIRPF<-0.02
	FinSegun
	
	Segun mes hacer
		caso 1: 
	FinSegun
	si salarioBruto>1000 Entonces
		tipoCotizacion<-0.20
	sino
		tipoCotizacion<-0.15
	FinSi
	
	si edad<18 Entonces
		bonificacion<-50
	Sino 
		si (18 <= edad y edad <= 65) Entonces
			bonificacion<-(-100)
		sino 
			bonificacion<-75
		FinSi
	FinSi
	
	salarioNeto<-salarioBruto-(salarioBruto*tipoCotizacion)-(salarioBruto*tipoIRPF)
	Escribir "Liquido a percibir ", salarioNeto
	
	salarioBonificacion<-salarioNeto+bonificacion
	Escribir "Liquido a percibir con bonificacion " ,salarioBonificacion
	
FinFuncion

Algoritmo salario_y_bonificacion
	Definir edadf, A, N Como Entero
	Definir salarioBrutof Como Real
	Definir tipoContratof Como Caracter
	Definir mesf Como entero
	
	Escribir "Dime el año de nacimiento:"
	leer N
	Escribir "Dime el año actual:"
	leer A
	
	edadf<-A-N
	
	Escribir "Dime el tipo de contrato(I:indefinido,P:practicas,T:temporal):"
	leer tipoContratof
	Escribir "Dime el salario bruto:"
	Leer salarioBrutof
	
	Escribir "Escoge las pagas(metodo 1/12 pagas, metodo 2/14pagas)"
	leer mesf
	
	sueldo(tipoContratof, salarioBrutof, edadf, mesf)
	Escribir "Tu edad es ", edadf "."
FinAlgoritmo
