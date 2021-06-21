
library(litsearchr)
library(tools)


# Collects all the .nbib files in the wd and outputs them as dataframes
fileNames <- Sys.glob("*.nbib")
for (fileName in fileNames) {
  sample <- import_results(file=fileName)
  assign(paste0(file_path_sans_ext(fileName)),sample)
}


  



# firstly a short function to redescribe proportions as percentages
term_extractor<- function(x, min_length, min_repeat) {
   extract_terms(keywords=x[, "keywords"], method="tagged", min_n=min_length, min_freq = min_repeat)
}


# getting keywords out of the title 
get_best_titles<- function(data){
extract_terms(
  text=data[, "title"],
  method="fakerake",
  min_freq=3, min_n=2,
  stopwords=all_stopwords)
}


create_network < function(data, minimum_studies){
  docs <- paste(data[, "title"], data[, "abstract"])
  dfm <- create_dfm(elements=docs, features=terms)
  create_network(dfm, min_studies=minimum_studies)
}


```{r create_network}
docs <- paste(naive_results[, "title"], naive_results[, "abstract"])
dfm <- create_dfm(elements=docs, features=terms)
g <- create_network(dfm, min_studies=1)

```
