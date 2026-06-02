#' Da la hora
#'
#' @param language Idioma, o "es" o "en"
#'
#' @returns Una frase
#'
#' @export
#' @examples
#' what_time()
#' what_time("en")
what_time <- function(language = "es") {
  if (!(language %in% c("es", "en"))) {
    stop("Malo")
  }

  time <- format(Sys.time(), "%H:%M")

  exclamation <- praise::praise("${Exclamation}")

  switch(
    language,
    es = sprintf("%s! Ahora son las %s!", exclamation, time),
    en = sprintf("%s! It is %s now!", exclamation, time)
  )
}
