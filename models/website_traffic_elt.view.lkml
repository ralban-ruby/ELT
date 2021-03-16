view: website_traffic_elt {
  sql_table_name: "MARKETING"."WEBSITE_TRAFFIC_ELT"
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

  dimension: traffic {
    type: number
    sql: ${TABLE}."TRAFFIC" ;;
  }

  dimension: traffic_type {
    type: string
    sql: ${TABLE}."TRAFFIC_TYPE" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
