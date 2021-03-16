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
  measure: count {
    type: count
    drill_fields: []
  }
  measure: org_traffic {
    type: number
    sql: ${organic_traffic} / 1;;
  }
  measure: p_traffic {
    type: number
    sql: ${paid_traffic} / 1;;
  }
}
