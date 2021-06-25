
library(tools)
library(dplyr)
library(readr)
library(igraph)
library(litsearchr)
library(ggraph)
library(stringr)
packageVersion("litsearchr")



  



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


create_the_network <- function(data, terms){
  docs <- paste(data[, "title"], data[, "abstract"])
  dfm <- create_dfm(elements=docs, features=terms)
  g <- create_network(dfm, min_studies=1)

}

print_the_network <-function(g){
  network_vis<-ggraph(g, layout="stress") +
    coord_fixed() +
    expand_limits(x=c(-3, 3)) +
    geom_edge_link(aes(alpha=weight)) +
    geom_node_point(shape="circle filled", fill="white") +
    geom_node_text(aes(label=name), hjust="outward", check_overlap=TRUE) +
    guides(edge_alpha=FALSE)
  network_vis  
}


strengths_of_network <- function(g){
  strengths <- strength(g)
  data.frame(term=names(strengths), strength=strengths, row.names=NULL) %>%
    mutate(rank=rank(strength, ties.method="min")) %>%
    arrange(strength) ->
    term_strengths
  
  term_strengths
}



find_network_cutoffs <- function(termstrengths,network){
  cutoff_fig <- ggplot(termstrengths, aes(x=rank, y=strength, label=term)) +
    geom_line() +
    geom_point() +
    geom_text(data=filter(termstrengths, rank>5), hjust="right", nudge_y=20, check_overlap=TRUE)
  
  cutoff_change <- find_cutoff(network, method="changepoint", knot_num=3)
  
  return(list(cutoff_change, cutoff_fig +
    geom_hline(yintercept=cutoff_change, linetype="dashed")))
  
}

clean_nas <- function(varb){
    dplyr::pull(varb) 

}



