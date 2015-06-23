planets     = c("Mercury","Venus","Earth","Mars","Jupiter","Saturn","Uranus","Neptune");
type        = c("Terrestrial planet","Terrestrial planet","Terrestrial planet","Terrestrial planet","Gas giant","Gas giant","Gas giant","Gas giant")
diameter    = c(0.382,0.949,1,0.532,11.209,9.449,4.007,3.883); 
rotation    = c(58.64,-243.02,1,1.03,0.41,0.43,-0.72,0.67);
rings       = c(FALSE,FALSE,FALSE,FALSE,TRUE,TRUE,TRUE,TRUE);

# Create the data frame:
planets_df  = data.frame(planets,type,diameter,rotation,rings)

# What is the correct ordering based on the planets_df$diameter variable?
positions =  order(planets_df$diameter,decreasing=TRUE)

# Create new "ordered" data frame:
largest_first_df = planets_df[positions,]

largest_first_df