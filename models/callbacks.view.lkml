view: callbacks {
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

  dimension: total {
    type: number
    sql: ${TABLE}."TOTAL" ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }

  measure: Callback_Ratio {
    type: sum
    sql: ${TABLE}."ROUNDEDRATIO"/100;;
  }
}
