#' The CODEX index in COPD
#'
#' @param charlson_index The Charlson Index relates long-term mortality with the patient’s comorbidity. In general, no comorbidity is considered to be: 0-1 point, low comorbidity: 2 points, and high > 3 points.
#' @param fev A number for forced expiratory volume in one second (FEV1) expressed as percentage
#' @param mmrc A number for the dyspnea scale of modified Medical Research Council (mMRC)
#' @param exacerbation Severe exacerbations of COPD during the previous year (hospitalization or ED consultations).
#'
#' @return the CODEX index
#' @export
#'
#' @examples
#' almagro(charlson_index=1, fev=65, mmrc=1, exacerbation=2)
almagro <- function(charlson_index, fev, mmrc, exacerbation) {
  if (charlson_index >= 0 & charlson_index <= 4) {
    comorbidity <- 0
  } else if (charlson_index >= 5 & charlson_index <= 7) {
    comorbidity <- 1
  } else {
    comorbidity <- 2
  }

  if (fev >= 65) {
    obstruction <- 0
  } else if (fev >= 50 & fev <= 64) {
    obstruction <- 1
  } else if (fev >= 36 & fev <= 49) {
    obstruction <- 2
  } else {
    obstruction <- 3
  }

  if (mmrc >= 0 & mmrc <= 1) {
    dyspnea <- 0
  } else if (mmrc == 2) {
    dyspnea <- 1
  } else if (mmrc == 3) {
    dyspnea <- 2
  } else {
    dyspnea <- 3
  }

  if (exacerbation == 0) {
    ex <- 0
  } else if (exacerbation >= 1 & exacerbation <= 2) {
    ex <- 1
  } else {
    ex <- 2
  }

  codex <- comorbidity + obstruction + dyspnea + ex  
  results <- list()
  results$codex <- codex
  
  return(results) 
  
}
