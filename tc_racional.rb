# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion
# Author: José Antonio Rodríguez Leandro
# Practica 5 LPP
# jueves 18 de octubre de 2013

require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase

def test_simple
#con numeros racionales:
	assert_equal("7 6", Fraccion.new(2,3).sumar(Fraccion.new(1,2)).to_s )           #prueba suma
	assert_equal("-1 3", Fraccion.new(2,3).restar(Fraccion.new(1,2)).to_s )         #prueba resta
	assert_equal("2 3", Fraccion.new(2,3).multiplicar(Fraccion.new(1,2)).to_s )	#prueba multiplicar	
	assert_equal("4 3", Fraccion.new(2,3).dividir(Fraccion.new(1,2)).to_s )		#prueba division
	

#con numeros enteros:
	assert_equal("11 3", Fraccion.new(2,3).sumar(3).to_s )           #prueba suma
	assert_equal("-7 3", Fraccion.new(2,3).restar(3).to_s )         #prueba resta
	assert_equal("2 1", Fraccion.new(2,3).multiplicar(3).to_s )	#prueba multiplicar	
	assert_equal("2 9", Fraccion.new(2,3).dividir(3).to_s )		#prueba division 	
	
  end

end
