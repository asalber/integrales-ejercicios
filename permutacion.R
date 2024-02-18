# Generate a single permutation of the first n integers
library(tidyverse)
df <- read_csv("alumnos.csv")
n <- nrow(df)
set.seed(123)
df$Ejercicio <- sample(1:n)
df |> 
    select(Apellidos, Nombre, Ejercicio) |> 
    write_csv("asignacion.csv")
