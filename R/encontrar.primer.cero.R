encontrar.primer.cero <- function(v) {
  # Encuentra el primer elemento con valor cero dentro de un vector.
  #
  # Args:
  #   v: vector de n elementos a analizar.
  #  
  # Returns:
  #   Informa de la posicion en el vector del primer cero y en caso de que el 
  #   vector no contenga cero también ofrece un mensaje indicandolo.
  ceroEncontrado <- FALSE
  for (i in 1:length(v)) {
    if (v[i] == 0){
      cat('El primer elemento del vector con valor cero se encuentra en la posicion', i)
      ceroEncontrado <- TRUE
      break
    }
  }
  if (ceroEncontrado == FALSE) {
    cat('El vector elegido no tiene ningun elemento con valor cero')
  }
}