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
      week_of_year,
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
    sql: ${TABLE}."ROUNDEDRATIO";;
    value_format: "0\%"
  }
}
