import Control.Concurrent
import Control.Concurrent.Async

main :: IO ()
main = do
    putStrLn "Ejemplo de Concurrencia:"
    let numeros = [1..9]
    resultados <- mapConcurrently calcularCuadrado numeros
    putStrLn $ "Suma de los cuadrados: " ++ show (sum resultados)

calcularCuadrado :: Int -> IO Int
calcularCuadrado x = return (x * x)
