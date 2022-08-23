view: callbacks_new {
  sql_table_name: "RS"."CALLBACKS"
    ;;

  dimension: callbackratio {
    type: number
    sql: ${TABLE}."CALLBACKRATIO" ;;
  }

  dimension: callbacks {
    type: number
    sql: ${TABLE}."CALLBACKS" ;;
  }

  dimension: calls {
    type: number
    sql: ${TABLE}."CALLS" ;;
  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."DATE" ;;
  }

  dimension: Week {
    type: date
    sql: DATEADD( day, 7, ${date_week});;
    datatype: date
  }
  dimension: name {
    label: "RC_Name"
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: roundedratio {
    type: number
    sql: ${TABLE}."ROUNDEDRATIO" ;;
  }

  measure: count {
    label: "count"
    type: count
    drill_fields: [name]
  }

  measure: Callback_Sum {
    type: sum
    sql: ${callbacks} ;;
  }

  measure: calls_sum {
    type: sum
    sql: ${TABLE}."CALLS" ;;
  }

  measure: CallbackRatio {
    type: number
    value_format_name: percent_2
    ##value_format: "0.#"
    sql: COALESCE(${Callback_Sum},0)/ NULLIF(${calls_sum},0);;
  }

}
