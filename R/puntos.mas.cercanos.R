puntos.mas.cercanos <- function(x,...) {   
  # Encuentra los dos puntos mas cercanos en un espacio M-dimensional.
  #
  # Args:
  #   x: vector donde se almacenan n coordenadas x de los n puntos sujetos a estudio.
  #   ...: n vectores correspondientes cada uno de ellos a las M dimensiones sujetas a estudio.
  #
  # Returns:
  #   Informa de la distancia Euclidea entre todos los puntos.
  #   Muestra los dos puntos mas cercanos en el espacio M-dimensional y la distincia entre ellos. 
  M <- rbind(x, ...)
  for (i in 1:ncol(M)) { 
    for (j in i:ncol(M)) {
      if (i != j) {
        dist <- sqrt(sum((M[,i] - M[,j])^2))
        cat('La distancia Euclidia entre el punto',i,'y',j,'es', dist,'\n')         
        if (i == 1 && j == 2){                               
          distMin <- dist  
          ptoA <- i 
          ptoB <- j 
        } else if (dist < distMin) {
          distMin <- dist
          ptoA <- i
          ptoB <- j 
        }
      }
    }
  }
  cat ('Los puntos mas cercanos son el', ptoA, 'y el', ptoB,'y su distancia es', distMin)
}   
