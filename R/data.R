#' Crime scene report
#'
#' Data for the crime scene as per the [SQL Murder](http://mystery.knightlab.com/walkthrough.html)
#' and [here] (https://github.com/NUKnightLab/sql-mysteries). Simon Willison made an online version
#' of the SQL game [here](https://sql-murder-mystery.datasette.io/sql-murder-mystery).
#'
#' \bold{How to play the game ....}
#'
#' Data for the crime scene as per the [SQL Murder](http://mystery.knightlab.com/walkthrough.html)
#' and [here] (https://github.com/NUKnightLab/sql-mysteries). Simon Willison made an online version
#' of the SQL game [here](https://sql-murder-mystery.datasette.io/sql-murder-mystery). This
#' package makes that data available. \cr\cr
#' There's been a Murder in SQL City!
#' The Murder Mystery is designed to be both a self-directed lesson to
#' learn R concepts and is also a fun game for experienced R users to solve an intriguing crime.
#' Please read  \bold{game_prompt.pdf} for the details!
#'
#' @format A data set with four variables: \code{date}, \code{type},
#'   \code{description} and \code{city}.
#' @examples
#' # Load a bit of the dataset: crime_scene_report
#' head(crime_scene_report)
"crime_scene_report"

#' Drivers license
#'
#' Data for the drivers license details we have [SQL Murder](http://mystery.knightlab.com/walkthrough.html)
#' and [here] (https://github.com/NUKnightLab/sql-mysteries). Simon Willison made an online version
#' of the SQL game [here](https://sql-murder-mystery.datasette.io/sql-murder-mystery).
#'
#' @format A data set with nine variables: \code{id}, \code{age},
#'   \code{height}, \code{eye_color}, \code{hair_color}, \code{gender},
#'   \code{plate_number}, \code{car_make} and \code{car_model}.
#' @examples
#' # Load a bit of the dataset: drivers_license
#' head(drivers_license)
"drivers_license"

#' Facebook checkin event
#'
#' Data for the facebook checkin events we have [SQL Murder](http://mystery.knightlab.com/walkthrough.html)
#' and [here] (https://github.com/NUKnightLab/sql-mysteries). Simon Willison made an online version
#' of the SQL game [here](https://sql-murder-mystery.datasette.io/sql-murder-mystery).
#'
#' @format A data set with four variables: \code{person_id}, \code{event_id},
#'   \code{event_name} and \code{date}.
#' @examples
#' # Load a bit of the dataset: facebook_event_checkin
#' head(facebook_event_checkin)
"facebook_event_checkin"

#' Fit Now checkin details
#'
#' Data for the Fit Now checkins we have [SQL Murder](http://mystery.knightlab.com/walkthrough.html)
#' and [here] (https://github.com/NUKnightLab/sql-mysteries). Simon Willison made an online version
#' of the SQL game [here](https://sql-murder-mystery.datasette.io/sql-murder-mystery).
#'
#' @format A data set with four variables: \code{membership_id}, \code{check_in_date},
#'   \code{check_in_time} and \code{check_out_time}.
#' @examples
#' # Load a bit of the dataset: get_fit_now_check_in
#' head(get_fit_now_check_in)
"get_fit_now_check_in"


#' Fit Now member details
#'
#' Data for the Fit Now members [SQL Murder](http://mystery.knightlab.com/walkthrough.html)
#' and [here] (https://github.com/NUKnightLab/sql-mysteries). Simon Willison made an online version
#' of the SQL game [here](https://sql-murder-mystery.datasette.io/sql-murder-mystery).
#'
#' @format A data set with five variables: \code{id}, \code{person_id},
#'   \code{name}, \code{membership_start_date} and \code{membership_status}.
#' @examples
#' # Load a bit of the dataset: get_fit_now_member
#' head(get_fit_now_member)
"get_fit_now_member"


#' Income
#'
#' Data for the income information we have [SQL Murder](http://mystery.knightlab.com/walkthrough.html)
#' and [here] (https://github.com/NUKnightLab/sql-mysteries). Simon Willison made an online version
#' of the SQL game [here](https://sql-murder-mystery.datasette.io/sql-murder-mystery).
#'
#' @format A data set with two variables: \code{ssn} and \code{annual_income}.
#' @examples
#' # Load a bit of the dataset: income
#' head(income)
"income"


#' Interview
#'
#' Data for the interviews conducted [SQL Murder](http://mystery.knightlab.com/walkthrough.html)
#' and [here] (https://github.com/NUKnightLab/sql-mysteries). Simon Willison made an online version
#' of the SQL game [here](https://sql-murder-mystery.datasette.io/sql-murder-mystery).
#'
#' @format A data set with two variables: \code{person_id} and \code{transcript}.
#' @examples
#' # Load a bit of the dataset: interview
#' head(interview)
"interview"


#' Person
#'
#' Data for the drivers license details we have [SQL Murder](http://mystery.knightlab.com/walkthrough.html)
#' and [here] (https://github.com/NUKnightLab/sql-mysteries). Simon Willison made an online version
#' of the SQL game [here](https://sql-murder-mystery.datasette.io/sql-murder-mystery).
#'
#' @format A data set with six variables: \code{id}, \code{name},
#'   \code{license_id}, \code{address_number}, \code{address_street_name} and \code{ssn}.
#' @examples
#' # Load a bit of the dataset: person
#' head(person)
"person"

#' Solution
#'
#' This is where the answer to the mystery goes!
#'
#' @format A empty data set with two variables: \code{user} and \code{value}. The data should be inserted as
#' (1, "Name of criminal") once you have cracked the puzzle.
"solution"
