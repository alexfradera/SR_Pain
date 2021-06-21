
library(litsearchr)
library(tools)

fileNames <- Sys.glob("*.nbib")
for (fileName in fileNames) {
  sample <- import_results(file=fileName)
  assign(paste0(file_path_sans_ext(fileName)),sample)
}


  
  
    # read old data:
  sample <- read.csv(fileNames[fileNumber],
                     header = TRUE,
                     sep = ",")

grab_search <- function(filename,objectname) {
  
   objectname <- import_results(file=filename)
}
  
grab_search("test.nbib",search_1)  
nrow(search_1)
  