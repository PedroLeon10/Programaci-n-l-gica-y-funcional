module FizzBuzz where
    import Data.List (intercalate)
-- Verifica si un número es primo o no
    esPrimo :: Int -> Bool
    esPrimo n
        | n <= 1    = False
        | otherwise = not $ any (\x -> n `mod` x == 0) [2..isqrt n]
        where
            isqrt = floor . sqrt . fromIntegral

-- Convierte un numero entero en su representación textual
    numerosALetras :: Int -> String
    numerosALetras n
        | n == 0    = "Cero"
        | n < 20    = unidades !! n
        | n < 100   = decenas !! (n `div` 10 - 2) ++ if n `mod` 10 /= 0 then " y " ++ unidades !! (n `mod` 10) else ""
        | n >= 100 && n < 200 = "Cien" ++ if n /= 100 then " " ++ numerosALetras (n `mod` 100) else ""

        | n > 500 && n < 599 = "quinientos" ++ " " ++ numerosALetras(n `mod` 100)  
        | n == 500 = "quinientos"  
       
        | n < 1000  = unidades !! (n `div` 100) ++ " cientos" ++ if n `mod` 100 /= 0 then " " ++ numerosALetras (n `mod` 100) else ""

        | n > 1000 && n < 1999 = "mil" ++ " " ++ numerosALetras(n `mod` 1000) 

        | n == 1000 = "mil"
        | n == 1000000 = "Un millon"

        
        | otherwise = let (q, r) = n `divMod` 1000 in numerosALetras q ++ " mil" ++ if r /= 0 then " " ++ numerosALetras r else ""

-- Lista de representaciones en texto de los números del 0 al 19 en español.
    unidades :: [String]
    unidades = ["", "Uno", "Dos", "Tres", "Cuatro", "Cinco", "Seis", "Siete", "Ocho", "Nueve", "Diez", "Once", "Doce", "Trece", "Catorce", "Quince", "Dieciseis", "Diecisiete", "Dieciocho", "Diecinueve"]

-- Lista de representaciones en texto de las decenas en español.
    decenas :: [String]
    decenas = ["Veinte", "Treinta", "Cuarenta", "Cincuenta", "Sesenta", "Setenta", "Ochenta", "Noventa"]

-- Funcion principal para decidir si se manda llamar la función que verifica si un número es primo o si se manda llamar la función para sacar su
-- representación textual al dicho número
    fizzBuzzConLetras :: Int -> String
    fizzBuzzConLetras n
        | esPrimo n = "FizzBuzz!"
        | otherwise = numerosALetras n

