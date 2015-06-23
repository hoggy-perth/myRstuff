animals_vector = c("Elephant", "Giraffe", "Donkey", "Horse")
temperature_vector = c("High", "Low", "High", "Low", "Medium")

factor_animals_vector = factor(animals_vector)
factor_temperature_vector = factor(temperature_vector, 
                                   order = TRUE, 
                                   levels = c("Low","Medium", "High"))