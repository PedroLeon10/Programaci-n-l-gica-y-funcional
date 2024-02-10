module FizzBuzz where 

    fizzbuzz :: Int -> String
    fizzbuzz n = number(n)
    -- Función para los numeros que no esten dentro de multiplos de 3 y 5 para poder concatenar con la función tens
    lessThan20 :: Int -> String
    lessThan20 n 
        | n > 0 && n < 20 =
        let answers = words("one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen")
        in answers !! (n-1)


    tens :: Int -> String 
    tens n
        | n >=2 && n<=9 =
            answers !! (n-2) 
            where 
                answers = words ("twenty thirty fourty fifty sixty seventy eighty ninety")
-- Función para verificar si el numero ingresado es multipo de 3, de 5, de ambos o de ninguno. Dependiendo de esto
-- se mandaran mensajes, si es multiplo de 3->Buzz, si es multiplo de 5->Fizz, si es mutiplo de los dos->FizzBuzz
-- en dado caso de que no sea multiplo de ninguno se llamaran las funciones lessThan20 y tens para mostrar el numero con letras
    number :: Int -> String 
    number n 
     | n `mod` 3 == 0 && n `mod` 5 == 0 = "FizzBuzz!"
     | n `mod` 3 == 0 = "Buzz!"
     | n `mod` 5 == 0 = "Fizz!"
     | 1 <= n && n< 20 = lessThan20 (n)
     | n `mod` 10 == 0 && n < 100 = tens(n `div` 10)
     | n < 100 = tens(n `div` 10) ++ " " ++ lessThan20(n `mod` 10)