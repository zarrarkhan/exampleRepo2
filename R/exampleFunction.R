# exampleFunction
#'
#' Details: Add any details or general description about this function here.
#' Details: Add any details or general description about this function here.
#'
#' @param param1 param1 Description
#' @param param2 param2 Description
#' @importFrom magrittr %>%
#' @export
#' @examples
#' \donttest{
#'     library(exampleRepo2)
#'     exampleFunction(3,4)
#'     }

exampleFunction<-function(param1=1,
                          param2=2) {


  df <- data.frame(param1 = rep(param1,5),
                   param2 = rep(param2,5))

  df1 <- df %>%
    dplyr::mutate(sum = param1+param2); df1

  #............
  # Initializing
  #.............

  print(paste0("Starting example function..."))

  print(paste0("Param 1 entered is: ", param1))
  print(paste0("Param 2 entered is: ", param2))

  print(paste0("Returning sum of param 1 and param 2: ", param1+param2))
  print(paste0("Finished running example function."))

  return(param1+param2)

}
