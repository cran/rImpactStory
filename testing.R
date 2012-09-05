library(XML)
library(RCurl)
library(RJSONIO)
library(stringr)


#' Creates a collection from a list of Impact Story ids (not working)
#'
#' @param title title of the collection
#' @param  objects a \code{list} of Impact Story ids.
#' @export
#' @return collection id
#' @examples \dontrun{
#' doi <- c("10.1145/1327452.1327492", "10.1080/10556781003625177")	
#' pmid <- c("19782018","17420288", "17593900", "17420288")
#' create_collection(title = "my collection", list_of_items) # list must be valid Impact Story IDs.
#'}
create_collection <- function(title = NULL, objects = NULL) {
	if(is.null(title))
		stop("Please specify a title for your collection", call.=FALSE)

	if(is.null(objects) || class(objects)! = list)
		stop("You need to specify a list of objects to curate into a collection. See ?create_collection for examples.", call.=FALSE)


 
	object_list <- toJSON(objects)	
	browser()
	new_id <- postForm('http://api.impactstory.it/collection', args = object_list, style = "POST")  	

} 

# Tests

pmid <- as.list(c("19782018","17420288", "17593900", "17420288"))
doi <- as.list(c("10.1145/1327452.1327492", "10.1080/10556781003625177"))
	)
x=list(pmid = pmid, doi =doi)
 names(pmid) <- rep("pmid", length(pmid))
 xx <- llply(x, function(z) {
 	browser()
 	})

 
 names(doi) <- rep("doi", length(doi))
 all <- c(pmid, doi)
object_list <- toJSON(all, .withNames = TRUE)