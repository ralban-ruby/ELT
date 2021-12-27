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

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: roundedratio {
    type: number
    sql: ${TABLE}."ROUNDEDRATIO" ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
