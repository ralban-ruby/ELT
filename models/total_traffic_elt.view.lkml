view: total_traffic_elt {
  sql_table_name: "MARKETING"."TOTAL_TRAFFIC_ELT"
    ;;

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

  dimension: total_traffic {
    type: number
    sql: ${TABLE}."TOTAL_TRAFFIC" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
