module Haskell2 where
    import System.IO
-- EJERCICIO 1---------------------------------
    import Data.Char (toUpper)
    import System.IO

    -- Funciones para calcular las operaciones solicitadas
    seno :: Double -> Double
    seno x = sin x

    coseno :: Double -> Double
    coseno x = cos x

    tangente :: Double -> Double
    tangente x = tan x

    exponencial :: Double -> Double
    exponencial x = exp x

    logaritmo :: Double -> Double
    logaritmo x = log x

    -- Función para aplicar una función a una lista de valores
    aplicarFuncion :: (Double -> Double) -> [Int] -> [(Int, Double)]
    aplicarFuncion f valores = [(x, f $ fromIntegral x) | x <- valores]

    -- Función principal que simula la calculadora
    calculadoraCientifica :: IO ()
    calculadoraCientifica = do
        putStrLn "Calculadora Científica"
        putStr "Ingrese un valor entero: "
        hFlush stdout
        entrada <- getLine
        let valor = read entrada :: Int
        putStr "Seleccione la función a aplicar (seno, coseno, tangente, exponencial, logaritmo): "
        hFlush stdout
        funcion <- getLine
        let resultado = case funcion of
                            "seno" -> aplicarFuncion seno [1..valor]
                            "coseno" -> aplicarFuncion coseno [1..valor]
                            "tangente" -> aplicarFuncion tangente [1..valor]
                            "exponencial" -> aplicarFuncion exponencial [1..valor]
                            "logaritmo" -> aplicarFuncion logaritmo [1..valor]
                            _ -> []
        putStrLn "Tabla de resultados:"
        putStrLn "---------------------"
        putStrLn " Entero |   Resultado  "
        putStrLn "---------------------"
        mapM_ (\(x, res) -> putStrLn $ "   " ++ show x ++ "   |    " ++ show res) resultado
        putStrLn "---------------------"

    -- Función main para ejecutar la calculadora
    main :: IO ()
    main = calculadoraCientifica

-- EJERCICIO 2---------------------------------
    esPar :: Int -> Bool
    esPar n = n `mod` 2 == 0

    filtrarLista :: (a -> Bool) -> [a] -> [a]
    filtrarLista _ [] = []  -- Caso base: lista vacía
    filtrarLista f (x:xs)
        | f x       = x : filtrarLista f xs  -- Agrega el elemento si la función es True
        | otherwise = filtrarLista f xs      -- Descarta el elemento si la función es False

-- Ejemplo de uso:
-- filtrarLista esPar [1, 2, 3, 4, 5, 6]
-- EJERCICIO 3---------------------------------
    calificacionSegunNota :: (Num a, Ord a) => a -> String
    calificacionSegunNota nota
        | nota >= 95 && nota <= 100 = "Excelente"
        | nota >= 85 && nota <= 94  = "Notable"
        | nota >= 75 && nota <= 84  = "Bueno"
        | nota >= 70 && nota <= 74  = "Suficiente"
        | otherwise                 = "Desempeño insuficiente"

    calificacionesSegunNotas :: (Num a, Ord a) => [a] -> [String]
    calificacionesSegunNotas notas = map calificacionSegunNota notas
-- EJERCICIO 4---------------------------------
    -- Función principal que transforma el diccionario de notas
    transformarNotas :: (Num a, Ord a) => [(String, a)] -> [(String, String)]
    transformarNotas notas = [(map toUpper asignatura, calificacionSegunNota nota) | (asignatura, nota) <- notas]

-- EJERCICIO 5---------------------------------
    data Inmueble = Inmueble { año :: Int
                         , metros :: Int
                         , habitaciones :: Int
                         , garaje :: Bool
                         , zona :: Char
                         } deriving (Show)

    precioInmueble :: Inmueble -> Float
    precioInmueble inmueble =
        let base = fromIntegral (metros inmueble * 1000 + habitaciones inmueble * 5000 + if garaje inmueble then 15000 else 0)
            descuento = 1 - fromIntegral (2024 - año inmueble) / 100
        in case zona inmueble of
            'A' -> base * descuento
            'B' -> base * descuento * 1.5
            _   -> error "Zona no válida"

    buscarInmuebles :: [Inmueble] -> Float -> [Inmueble]
    buscarInmuebles inmuebles presupuesto = filter (\inmueble -> precioInmueble inmueble <= presupuesto) inmuebles

    main2 :: IO ()
    main2 = do
        putStr "Ingrese un presupuesto: "
        hFlush stdout
        entrada <- getLine
        let presupuesto = read entrada :: Float
        let inmuebles = [ Inmueble { año = 2000, metros = 100, habitaciones = 3, garaje = True, zona = 'A' } 
                        , Inmueble { año = 2012, metros = 60, habitaciones = 2, garaje = True, zona = 'B' }  
                        , Inmueble { año = 1980, metros = 120, habitaciones = 4, garaje = False, zona = 'A' }
                        , Inmueble { año = 2005, metros = 75, habitaciones = 3, garaje = True, zona = 'B' }
                        , Inmueble { año = 2015, metros = 90, habitaciones = 2, garaje = False, zona = 'A' }
                        ]
            --presupuesto = 100000.0
            -- presupuesto = valor
            inmueblesFiltrados = buscarInmuebles inmuebles presupuesto
        putStrLn "Inmuebles encontrados dentro del presupuesto:" 
        mapM_ (\inmueble -> putStrLn $ "Año: " ++ show (año inmueble) ++
                                   ", Metros: " ++ show (metros inmueble) ++
                                   ", Habitaciones: " ++ show (habitaciones inmueble) ++
                                   ", Garaje: " ++ show (garaje inmueble) ++
                                   ", Zona: " ++ [zona inmueble] ++
                                   ", Precio: " ++ show (precioInmueble inmueble))
          inmueblesFiltrados

 

    

    


    
