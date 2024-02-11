module Haskell1 where 

-- EJERCICIO 1---------------------------------
-- Aplica un descuento
    aplicarDescuento :: Float -> Float -> Float
    aplicarDescuento precio descuento = precio - (precio * (descuento / 100))
-- Aplica el IVA
    aplicarIva :: Float -> Float
    aplicarIva precio = precio + (precio *0.16)
   
    precioFinalCesta :: [(Float, Float)] -> (Float -> Float -> Float) -> Float
    precioFinalCesta cesta funcion = sum [funcion precio descuento | (precio, descuento) <- cesta]

-- EJERCICIO 2----------------------------------
-- Funcion que resive una lista y una función
    aplicaFuncionLista :: (a -> b) -> [a] -> [b]
    aplicaFuncionLista _ [] = []  -- Caso base: lista vacía
    aplicaFuncionLista f (x:xs) = f x : aplicaFuncionLista f xs

    cuadrado :: Num a => a -> a
    cuadrado n = n * n

    listaOriginal :: [Int]
    listaOriginal = [1, 2, 3, 4]

    listaCuadrados :: [Int]
    listaCuadrados = aplicaFuncionLista cuadrado listaOriginal

-- EJERCICIO 3----------------------------------
-- Dividir frase en palabras
    longitudFrase :: String -> [(String, Int)]
    longitudFrase frase = [(palabra, length palabra) | palabra <- palabras] 
        where 
            palabras = words frase
-- EJERCICIO 4----------------------------------
    calificacionSegunNota :: (Num a, Ord a) => a -> String
    calificacionSegunNota nota
        | nota >= 95 && nota <= 100 = "Excelente"
        | nota >= 85 && nota <= 94  = "Notable"
        | nota >= 75 && nota <= 84  = "Bueno"
        | nota >= 70 && nota <= 74  = "Suficiente"
        | otherwise                 = "Desempeño insuficiente"

    calificacionesSegunNotas :: (Num a, Ord a) => [a] -> [String]
    calificacionesSegunNotas notas = map calificacionSegunNota notas
-- EJERCICIO 5----------------------------------
-- Modulo de un vector
    moduloVector :: Floating a => [a] -> a
    moduloVector = sqrt . sum . map (^2)
-- EJERCICIO 6----------------------------------
-- Valores atípicos
    valoresAtipicos :: [Double] -> [Double]
    valoresAtipicos muestra =
        let
            mediaMuestra = sum muestra / fromIntegral (length muestra)
            desviacion = sqrt (sum [(x - mediaMuestra) ^ 2 | x <- muestra] / fromIntegral (length muestra))
        in
            [x | x <- muestra, abs ((x - mediaMuestra) / desviacion) > 3]