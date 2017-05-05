


input_data = read.csv("Sample_PGH_Data.csv")

head(input_data)


input_data$sqft_rng=
  with(input_data,ifelse(sqft>500,"500+",ifelse(sqft>600,"600+",ifelse(sqft>700,"700+",
    ifelse(sqft>800,"800+",ifelse(sqft>900,"900+",ifelse(sqft>1000,"1000+",ifelse(sqft>1250,
    ifelse(sqft>1250,"1250+",ifelse(sqft>1500,"1500+",ifelse(sqft>2000,"2000+",
    ifelse(sqft>2500,"2500+",ifelse(sqft>3000,"3000+",ifelse(sqft>3500,"3500+",
    ifelse(sqft>4000,"4000+",ifelse(sqft>4500,"4500+",ifelse(sqft>5000,"5000+",
    ifelse(sqft=="NA","",0))))))))))))))))))
            