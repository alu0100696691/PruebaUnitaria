# Implementar en este fichero la clase para crear objetos racionales
# Author: José Antonio Rodríguez Leandro
# Practica 5 LPP
# miercoles 16 de octubre de 2013

require "./gcd.rb"


class Fraccion

	# método inicializar clase
	def initialize(n, d)  
		# atributos  
		max = gcd(n,d) #maximo comun divisor 
		@n = n / max #reducida a su mínima expresión
		@d = d / max #reducida a su mínima expresión 
	end 
	
	attr_reader :n,:d  #automaticamente creamos get @n y get @d
	
	def multiplicar(other)  #producto
		if other.is_a? Fraccion		
			maximo = gcd(other.n,other.d) 
			othern = other.n / maximo   #reducida a su mínima expresión
			otherd = other.n / maximo   #reducida a su mínima expresión
		end
		return Fraccion.new(@n * othern, @d * otherd) if other.is_a? Fraccion
		return Fraccion.new(@n * other, @d ) if other.is_a? Numeric	      #si es un numero entero	
	end

	def dividir(other)  #division
		if other.is_a? Fraccion		
			maximo = gcd(other.n,other.d) 
			othern = other.n / maximo  #reducida a su mínima expresión
			otherd = other.d / maximo  #reducida a su mínima expresión
		end
		return Fraccion.new(@n * otherd, @d * othern) if other.is_a? Fraccion
		return Fraccion.new(@n, @d * other ) if other.is_a? Numeric          #si es un numero entero		
	end
	
	def sumar(other)  #suma
		if other.is_a? Fraccion		
			maximo = gcd(other.n,other.d) 
			othern = other.n / maximo   #reducida a su mínima expresión
			otherd = other.d / maximo   #reducida a su mínima expresión
		end
		if @d == otherd  #mismo denominador
			return Fraccion.new(@n + othern, @d) if other.is_a? Fraccion
			return Fraccion.new(@n+(othern*@d), @d) if other.is_a? Numeric  
		 
		elsif other.is_a? Fraccion   #si es una fraccion
				return Fraccion.new((@n*otherd)+(@d*othern), @d*otherd) if other.is_a? Fraccion
		
		else
			return Fraccion.new((@n)+(@d*other), @d) if other.is_a? Numeric	#si es un numero entero
		end	
							
	end
		
	def restar(other)  #resta
		if other.is_a? Fraccion		
			maximo = gcd(other.n,other.d) 
			othern = other.n / maximo    #reducida a su mínima expresión
			otherd = other.n / maximo    #reducida a su mínima expresión
		end
		if @d == otherd  #mismo denominador
			return Fraccion.new(@n - othern, @d) if other.is_a? Fraccion
			return Fraccion.new(@n-(othern*@d), @d) if other.is_a? Numeric  
		 
		elsif other.is_a? Fraccion
				return Fraccion.new((@n*otherd)-(@d*othern), @d*otherd) if other.is_a? Fraccion
		
		else	
			return Fraccion.new((@n)-(@d*other), @d) if other.is_a? Numeric    #si es un numero entero
		end	
			
	end

	def to_s  #devuelve una cadena 
		return %Q(#{@n} #{@d})
	end


end



