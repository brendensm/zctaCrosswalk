library(sf)
library(dplyr)

ct_counties <- tigris::counties(state="CT", year = 2022)

ct_z2 <- tigris::zctas(starts_with = "06", year = 2022) # this takes some time

zcta_county_intersection <- st_intersection(ct_z2, ct_counties)

ct_cw <- zcta_county_intersection |>
  st_drop_geometry() |>
  select(ZCTA5CE20, GEOID, NAME) |>
  rename(
    zcta = ZCTA5CE20,
    pr = GEOID,
    planning_region = NAME
  ) |>
 mutate(
    zcta_numeric = as.numeric(zcta),
    pr_numeric = as.numeric(pr)
  )

usethis::use_data( ct_cw, internal = FALSE,
                   compress = "xz", overwrite = TRUE)




