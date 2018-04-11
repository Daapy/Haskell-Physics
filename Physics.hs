tiempo = do
  putStr("Ingresa la Distancia (metros):\n")
  n1 <- getNum
  putStr("Ingresa la Velocidad (m/s):\n")
  n2 <- getNum
  let tiempo=[c / d | c <- [n1], d <- [n2]]
  putStr("El resultado es: "++show(tiempo)++" segundos"++"\n")

distancia = do
  putStr("Ingresa la Velocidad (m/s):\n")
  n1 <- getNum
  putStr("Ingresa el Tiempo (segundos):\n")
  n2 <- getNum
  let distancia=[c*d | c <- [n1], d <- [n2]]
  putStr("El resultado es: "++show(distancia)++" metros"++"\n")


velocidad = do
  putStr("Ingresa la Distancia (m):\n")
  n1 <- getNum
  putStr("Ingresa el Tiempo (segundos):\n")
  n2 <- getNum
  let velocidad=[c / d | c <- [n1], d <- [n2]]
  putStr("El resultado es: "++show(velocidad)++" m/s"++"\n")

getNum :: IO Double
getNum = do
  s <- getLine
  return (read s)

main = do 
	putStr("Bienvenido al sistema de formulas Fisicas, para continuar porfavor seleccione una de las siguientes opciones...\n1.----Tiempo\n2.----Distancia\n3.----Velocidad\n>\n")
	opt <- getNum
	if opt == 1 then tiempo else if opt == 2 then distancia else if opt == 3 then velocidad else putStr("Por favor seleccione solo las opciones disponibles\n")
	main