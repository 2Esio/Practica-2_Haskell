-- Practica 1

-- Ejercicios:

{-
1. Dado el diámetro de un circulo elabora una función con la siguiente firma que calcule su perímetro y la devuelva.

calculaPerimetroCirculo:: Float -> Float
-}

calculaPerimetroCirculo:: Float -> Float
calculaPerimetroCirculo diametro = (diametro * pi)

-- Ejemplo de uso:
-- calculaPerimetroCirculo 1 devuelve 3.15...

{-
2. Dado el diámetro de un círculo elabora una función con la siguiente firma que calcule su area y la devuelva.

calculaAreaCirculo:: Float -> Float
-}

calculaAreaCirculo:: Float -> Float
calculaAreaCirculo diametro = (diametro / 2) ^ 2 * (pi)

-- Ejemplo de uso:
-- calculaAreaCirculo 1 devuelve 0.7875

{-
4. Dado b la base y a la altura de un triángulo, calcular su  área.

calcularAreaTriangulo:: Float -> Float -> Float
-}

calcularAreaTriangulo :: Float -> Float -> Float
calcularAreaTriangulo base altura = (base * altura) / 2
-- Ejemplo de uso:
-- calcularAreaTriangulo 5 3 devuelve 7.5


{-
8. Dado el siguiente Input, Output y la siguiente definición en Haskell completa el método mágico
(Hint:) Puede o no tener algo que ver con el ejercicio 4.

magico :: Double -> Double -> Double -> Double
Input: magico 5 7 8
Output: 17.32

-}

magico :: Double -> Double -> Double -> Double
magico a b c = sqrt (s * (s - a) * (s - b) * (s - c))
  where
    s = (a + b + c) / 2

-- Ejemplo de uso:
-- magico 5 7 8 devuelve 17.320508075688775


{-
Ejercicio Extra:
Según la definición de fibonacci 0, 1, 1, 2, 3, 5, 8 crea una función que devuelva el resultado de la
sucesión para la posición n, según esta firma.

fib:: Int->Int
Input: fib 6
Output: 8


Para calcular el término n de la sucesión de Fibonacci, 
podemos implementar una función recursiva:
-}


fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)

-- Ejemplo de uso:
-- fib 6 devuelve 8





