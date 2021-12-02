connection: "elt_connector"

include: "*.view"

explore: cost_detail_elt {hidden: yes}
explore: lead_detail_elt {hidden: yes}
explore: signups_detail_elt {hidden: yes}
explore: total_traffic_elt {hidden: yes}
explore: website_traffic_elt {hidden: yes}
explore: close_rate_elt {hidden: yes}
explore: callbacks {}
explore: jace_data {}
explore: recap_callbacks {}
explore: moonlight_data{}
explore: rs_callback_details{hidden: yes}

datagroup: elt_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: elt_default_datagroup
