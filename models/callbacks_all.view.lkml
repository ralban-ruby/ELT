view: callbacks_all {
  sql_table_name: "RS"."CALLBACKS"
    ;;

  dimension: callbacks {
    type: number
    sql: ${TABLE}."CALLBACKS" ;;
  }

  dimension: calls {
    type: number
    sql: ${TABLE}."CALLS" ;;
  }

  dimension: callbackratio {
    type: number
    sql: ${TABLE}."Callbackratio" ;;
  }

dimension: roundedratio{
  type: number
  sql: ${TABLE}."RoundedRatio" ;;
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
    type: string
    sql: ${TABLE}."NAME" ;;
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
