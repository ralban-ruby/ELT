connection: "elt_connector"

include: "*.view"

explore: cost_detail_elt {}
explore: lead_detail_elt {}
explore: signups_detail_elt {}
explore: total_traffic_elt {}
explore: website_traffic_elt {}
explore: close_rate_elt {}

datagroup: elt_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: elt_default_datagroup
