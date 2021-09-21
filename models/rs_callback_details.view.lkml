view: rs_callback_details {
  sql_table_name: "RS"."RS_CALLBACK_DETAILS"
    ;;

  dimension: fc_attendanttime {
    type: string
    sql: ${TABLE}."FC_ATTENDANTTIME" ;;
  }

  dimension: fc_callerid {
    type: string
    sql: ${TABLE}."FC_CALLERID" ;;
  }

  dimension_group: fc_callstarttime {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."FC_CALLSTARTTIME" AS TIMESTAMP_NTZ) ;;
  }

  dimension: fc_did {
    type: string
    sql: ${TABLE}."FC_DID" ;;
  }

  dimension: fc_receptionist {
    type: string
    sql: ${TABLE}."FC_RECEPTIONIST" ;;
  }

  dimension: fc_wrapup {
    type: string
    sql: ${TABLE}."FC_WRAPUP" ;;
  }

  dimension: sc_attendanttime {
    type: string
    sql: ${TABLE}."SC_ATTENDANTTIME" ;;
  }

  dimension_group: sc_callstarttime {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."SC_CALLSTARTTIME" AS TIMESTAMP_NTZ) ;;
  }

  dimension: sc_receptionist {
    type: string
    sql: ${TABLE}."SC_RECEPTIONIST" ;;
  }

  dimension: sc_wrapup {
    type: string
    sql: ${TABLE}."SC_WRAPUP" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
