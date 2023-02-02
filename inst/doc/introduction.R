## ----setup, include = FALSE---------------------------------------------------
options(rmarkdown.html_vignette.check_title = FALSE)

knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

library(appler)

## ---- include = FALSE---------------------------------------------------------
Sys.sleep(1)

## ----search_artist------------------------------------------------------------
# Artist ID can be obtained from the artistId column
taylor_swift_songs <- search_apple("Taylor Swift")

taylor_swift <- search_apple("Taylor Swift", media = "music", entity = "musicArtist")
str(taylor_swift)

taylor_swift_id <- taylor_swift$artistId

## ---- include = FALSE---------------------------------------------------------
Sys.sleep(1)

## ----search_app---------------------------------------------------------------
github_tracks <- search_apple("GitHub")

github_app <- search_apple("GitHub", media = "software", entity = "software")
# Over 50 apps are returned, however the top is the official GitHub app
github_app_id <- github_app$trackId[1]
cat(github_app_id)

## ---- include = FALSE---------------------------------------------------------
Sys.sleep(1)

## ----lookup-------------------------------------------------------------------
taylor_swift_lookup <- lookup_apple(taylor_swift_id)
str(taylor_swift_lookup)

## ----lookup_comparison--------------------------------------------------------
taylor_swift_cols <- names(taylor_swift)
cat("Same results:", all.equal(taylor_swift, taylor_swift_lookup[, taylor_swift_cols]), "\n")

## ---- include = FALSE---------------------------------------------------------
Sys.sleep(1)

## ----reviews------------------------------------------------------------------
github_reviews <- get_apple_reviews(github_app_id)
head(github_reviews)

## ---- include = FALSE---------------------------------------------------------
Sys.sleep(1)

## ----ratings------------------------------------------------------------------
github_ratings <- get_apple_rating_split(github_app_id)
github_ratings

