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

  dimension: paid_traffic {
    type: number
    sql: ${TABLE}."PAID_TRAFFIC" ;;
  }
  dimension: organic_traffic {
    type: number
    sql: ${TABLE}."ORGANIC_TRAFFIC" ;;
  }
  dimension: traffic_type1 {
    type: string
    sql: ${TABLE}."TRAFFIC_TYPE1" ;;
  }
  dimension: traffic_type {
    type: string
    sql: ${TABLE}."TRAFFIC_TYPE1" ;;
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
