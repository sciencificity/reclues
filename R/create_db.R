
# make_db <- function(){
#     con <- DBI::dbConnect(drv = RSQLite::SQLite(),
#                      dbname = "sql_murder_mystery.sqlite")
#     DBI::dbWriteTable(conn = con, "crime_scene_report",
#                       crime_scene_report, overwrite = TRUE)
#     DBI::dbWriteTable(conn = con, "drivers_license",
#                       drivers_license, overwrite = TRUE)
#     DBI::dbWriteTable(conn = con, "facebook_event_checkin",
#                       facebook_event_checkin, overwrite = TRUE)
#     DBI::dbWriteTable(conn = con, "get_fit_now_check_in",
#                       get_fit_now_check_in, overwrite = TRUE)
#     DBI::dbWriteTable(conn = con, "get_fit_now_member",
#                       get_fit_now_member, overwrite = TRUE)
#     DBI::dbWriteTable(conn = con, "income",
#                       income, overwrite = TRUE)
#     DBI::dbWriteTable(conn = con, "interview",
#                       interview, overwrite = TRUE)
#     DBI::dbWriteTable(conn = con, "person",
#                       person, overwrite = TRUE)
#
#     DBI::dbDisconnect(con)
# }

#' The sqlite database for the SQL Murder Mystery
#'
#' This database is bundled with the package, and contains all data frames
#' in the reclues package. If called it returns the connection to the SQLite DB
#' which can then be used to get more information, run queries etc.
#' @return A connection to the sql-murder-mystery.db which is a SQLite database provided by `@knightlab`
#' @importFrom DBI dbConnect
#' @importFrom RSQLite SQLite
#' @export
#' @examples
#' library(DBI)
#' library(dplyr)
#' db <- reclues::get_db()
#' DBI::dbListTables(db)
#'
#' DBI::dbGetQuery(db, "SELECT * FROM crime_scene_report LIMIT 10")
#'
#' # Use dplyr to connect to the database and view a few of the entries in the table
#' dplyr::tbl(db, "crime_scene_report")
#'
#' DBI::dbDisconnect(db)
get_db <- function() {
    DBI::dbConnect(RSQLite::SQLite(), system.file("db", "sql-murder-mystery.db", package = "reclues"))
}
