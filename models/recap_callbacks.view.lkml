view: recap_callbacks {
  sql_table_name: "RS"."CALLBACK_RECAP"
    ;;

  dimension: fc_attendanttime {
    type: string
    label: "Seconds"
    description: "FC_attendenttime"
    sql: ${TABLE}."FC_ATTENDANTTIME" ;;
  }

  dimension: fc_callerid {
    type: string
    label: "Caller ID"
    description: "FC_CallerID"
    sql: ${TABLE}."FC_CALLERID" ;;
  }

  dimension_group: fc_callstarttime {
    label: " Call Start"
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
    label: "DID"
    description: "FC_DID"
    type: string
    sql: ${TABLE}."FC_DID" ;;
  }

  dimension: fc_receptionist {
    type: string
    label: "Receptionist"
    description: "FC_Receptionist"
    sql: ${TABLE}."FC_RECEPTIONIST" ;;
  }

  dimension: fc_wrapup {
    type: string
    label: "Wrap Up"
    description: "FC_WrapUp"
    sql: ${TABLE}."FC_WRAPUP" ;;
  }

  dimension: sc_attendanttime {
    type: string
    label: "Seconds"
    description: "SC_Attendanttime"
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
      year
    ]
    sql: CAST(${TABLE}."SC_CALLSTARTTIME" AS TIMESTAMP_NTZ) ;;
  }

  dimension: sc_receptionist {
    type: string
    label: "Receptionist"
    description: "SC_Receptionist"
    sql: ${TABLE}."SC_RECEPTIONIST" ;;
  }

  dimension: sc_wrapup {
    type: string
    label: "Wrap Up"
    description: "SC_WrapUp"
    sql: ${TABLE}."SC_WRAPUP" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
