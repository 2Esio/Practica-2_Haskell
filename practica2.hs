-- Practica 1

-- Ejercicios:

{-
1. Dado el diámetro de un circulo elabora una función con la siguiente firma que calcule su perímetro y la devuelva.

calculaPerimetroCirculo:: Float -> Float
-}

calculaPerimetroCirculo:: Float -> Float
calculaPerimetroCirculo diametro = 2 * (pi) * (diametro/2)

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
3. Utilizando ambas funciones y la siguiente firma, elabora una funcion que calcule el area de un cilindro de altura h.

calculaAreaCilindro:: Float -> Float -> Float
-}

calculaAreaCilindro:: Float -> Float -> Float
calculaAreaCilindro diametro altura = (calculaPerimetroCirculo(diametro) + (2 * (calculaAreaCirculo(diametro))) * altura)

-- Ejemplo de uso:
-- calculaAreaCilindro 2 4 devuelce 32.1...


{-
4. Dado b la base y a la altura de un triángulo, calcular su  área.

calcularAreaTriangulo:: Float -> Float -> Float
-}

calcularAreaTriangulo :: Float -> Float -> Float
calcularAreaTriangulo base altura = (base * altura) / 2
-- Ejemplo de uso:
-- calcularAreaTriangulo 5 3 devuelve 7.5

{-
5. Calcula el area de un poligono regular dado, su número de lados, base y altura o apotema

calcularArea:: Int -> Float -> Float -> Float
-}

calcularArea:: Int -> Float -> Float -> Float 
calcularArea lados longitud apotema | lados <= 3 || apotema <= 0 = -1
                                    | otherwise = 0.5 * fromIntegral lados * longitud * apotema

{-
6. Utilizando la función anterior calcula el  ́volumen de una pirámide de altura h:

calcularVolumen :: Float -> Float -> Float-> Float
-}

calcularVolumen :: Float -> Float -> Float -> Float
calcularVolumen base altura h = (base * altura * h) / 3

-- Ejemplo de uso:
-- calcularVolumen 5 5 6 devuelve 50

{-
7. Utilizando la funcion calculaArea, calcula el area de un prisma cuya cara puede conformarse de cualquier poligono regular, dada una altura h, lado l y números de lado n. 

calcularAreaPoligonoRegular:: Int -> Float -> Float -> Float 
-}

calcularAreaPoligonoRegular:: Int -> Float -> Float -> Float -> Float
calcularAreaPoligonoRegular lados longitud altura apotema = (2 * (calcularArea lados longitud apotema) + (fromIntegral lados * longitud) * (altura))  

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





