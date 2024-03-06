import Control.Parallel.Strategies

main :: IO ()
main = do
    let numeros = [1..9]
    putStrLn "Ejemplo de Paralelismo:"
    let resultadosParalelos = parMap rpar calcularCuadradoParalelo numeros
    putStrLn $ "Suma de los cuadrados: " ++ show (sum resultadosParalelos)

calcularCuadradoParalelo :: Int -> Int
calcularCuadradoParalelo x = x * x