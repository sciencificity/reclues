
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

#' A sample sqlite database
#'
#' This database is bundled with the package, and contains all data frames
#' in the datasets package.
#' @importFrom DBI dbConnect
#' @importFrom RSQLite SQLite
#' @export
#' @examples
#' library(DBI)
#' db <- reclues::get_db()
#' dbListTables(db)
#'
#' dbGetQuery(db, "SELECT * FROM crime_scene_report LIMIT 10")
#'
#' dbDisconnect(db)
get_db <- function() {
    DBI::dbConnect(RSQLite::SQLite(), system.file("db", "sql-murder-mystery.db", package = "reclues"))
}
