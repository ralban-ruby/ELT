view: close_rate_elt {
  sql_table_name: "MARKETING"."CLOSE_RATE_ELT"
    ;;

  dimension: cor_to_close {
    type: number
    sql: ${TABLE}."COR_TO_CLOSE" ;;
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

  dimension: lead_to_close {
    type: number
    sql: ${TABLE}."LEAD_TO_CLOSE" ;;
  }

  dimension: mql_to_close {
    type: number
    sql: ${TABLE}."MQL_TO_CLOSE" ;;
  }

  dimension: sql_to_close {
    type: number
    sql: ${TABLE}."SQL_TO_CLOSE" ;;
  }

  dimension: traffic_to_close {
    type: number
    sql: ${TABLE}."TRAFFIC_TO_CLOSE" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
