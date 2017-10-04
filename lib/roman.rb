class Roman

  def initialize
    @simbolos = {'M': 1000, 'CM': 900, 'D': 500, 'CD': 400, 'C': 100, "XC":90, 
                 'L': 50, 'XL': 40, 'X': 10, 'IX': 9, 'V': 5, 'IV': 4, 'I': 1}
  end

  def converte_numero_para_romano(numero)
    busca(numero)
  end

  def busca(numero, simbolo_romano = '')
    valor_romano = 0
    @simbolos.each do |key, value|
      if value <= numero
        simbolo_romano << key.to_s
        valor_romano = value
        break
      end
    end

    numero = numero - valor_romano
    return simbolo_romano if numero == 0

    busca(numero, simbolo_romano)
  end
end