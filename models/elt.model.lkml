connection: "elt_connector"

include: "*.view"

explore: cost_detail_elt {hidden: yes}
explore: lead_detail_elt {hidden: yes}
explore: signups_detail_elt {hidden: yes}
explore: total_traffic_elt {hidden: yes}
explore: website_traffic_elt {hidden: yes}
explore: close_rate_elt {hidden: yes}
explore: jace_data {}
explore: rs_recap_callback {}
explore: moonlight_data{}
explore: call_data_by_week{}

explore: callbacks_new{
  join: rs_recap_callback {
    relationship:one_to_one
    type: left_outer
    sql_on: ${callbacks_new.name}=${rs_recap_callback.fc_receptionist} ;;
    }
}

datagroup: elt_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_for: "0 seconds"
