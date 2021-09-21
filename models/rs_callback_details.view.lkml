view: rs_callback_details {
  sql_table_name: "RS"."RS_CALLBACK_DETAILS"
    ;;

  dimension: fc_attendanttime {
    type: string
    label: "Seconds"
    sql: ${TABLE}."FC_ATTENDANTTIME" ;;
  }

  dimension: fc_callerid {
    type: string
    label: "CallerID"
    sql: ${TABLE}."FC_CALLERID" ;;
  }

  dimension_group: fc_callstarttime {
    type: time
    label: "Call Start"
    timeframes: [
      raw,
      time,
      date,
      hour_of_day,
      time_of_day,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."FC_CALLSTARTTIME" AS TIMESTAMP_NTZ) ;;
  }

  dimension: fc_did {
    type: string
    label: "DID"
    sql: ${TABLE}."FC_DID" ;;
  }

  dimension: fc_receptionist {
    type: string
    label: "Receptionist"
    sql: ${TABLE}."FC_RECEPTIONIST" ;;
  }

  dimension: fc_wrapup {
    type: string
    label: "Wrap Up"
    sql: ${TABLE}."FC_WRAPUP" ;;
  }

  dimension: sc_attendanttime {
    type: string
    label: "Seconds"
    sql: ${TABLE}."SC_ATTENDANTTIME" ;;
  }

  dimension_group: sc_callstarttime {
    type: time
    label: "Call Back"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year,
      hour_of_day,
      time_of_day
    ]
    sql: CAST(${TABLE}."SC_CALLSTARTTIME" AS TIMESTAMP_NTZ) ;;
  }

  dimension: sc_receptionist {
    type: string
    label: "Receptionist"
    sql: ${TABLE}."SC_RECEPTIONIST" ;;
  }

  dimension: sc_wrapup {
    type: string
    label: "Wrap Up"
    sql: ${TABLE}."SC_WRAPUP" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
