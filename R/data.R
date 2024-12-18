#' 2020 Crosswalk of ZIP Code Tabulation Areas (ZCTAs)
#'
#' The primary data was obtained via the function get_zcta_crosswalk. There are 3 types of columns: ZCTA,
#' state and county. Where data in practice sometimes appears as both character and numeric, columns for both are
#' provided.
#'
#' @docType data
#' @name zcta_crosswalk
#' @usage data(zcta_crosswalk)
NULL

#' Metadata for Each "State" in zcta_crosswalk
#'
#' The complete dataset in ?zcta_crosswalk contains information on 56 state and
#' state-equivalents. This dataframe contains the full name of each "state", plus
#' its USPS abbreviation and FIPS code.
#'
#' @docType data
#' @name state_names
#' @usage data(state_names)
NULL

#' Crosswalk between Connecticut County Equivalents (Planning Regions) and ZCTAs
#'
#' The complete dataset in ?ct_cw contains information Connecticut's new planning
#' regions and their corresponding ZCTAs, names, and GEOIDs. This data was sourced
#' from the U.S. Census Bureau's TIGER/Line shapefiles pulled with the tigris package.
#' Intersections were calculated using the sf package. Any ZCTA that crosses into
#' a planning region's border is included in that planning region's associated ZCTAs.
#'
#' @docType data
#' @name ct_cw
#' @usage data(ct_cw)
NULL

