#' Say Hello from Scala
#'
#' @param sc spark connection 
#'
#' @return character hello message
#' @export
#'
#' @examples
#' \dontrun{
#' library(sparklyr)
#' library(sparkhello)
#' 
#' sc <- spark_connect(master = "local")
#' 
#' sparkhello_hello(sc)
#' 
#' spark_disconnect(sc)
#' }
#' @import sparklyr
hello <- function(sc) {
  sparklyr::invoke_static(sc, "sparkhello.Main", "hello")
}
