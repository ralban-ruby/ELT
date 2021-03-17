view: lead_detail_elt {
  sql_table_name: "MARKETING"."LEAD_DETAIL_ELT"
    ;;

  dimension: cor_sql_conversion {
    type: number
    sql: ${TABLE}."COR_SQL_CONVERSION" ;;
  }

  dimension: cor_total {
    type: number
    sql: ${TABLE}."COR_TOTAL" ;;
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

  dimension: lead_mql_conversion {
    type: number
    sql: ${TABLE}."LEAD_MQL_CONVERSION" ;;
  }

  dimension: lead_total {
    type: number
    sql: ${TABLE}."LEAD_TOTAL" ;;
  }

  dimension: mql_cor_conversion {
    type: number
    sql: ${TABLE}."MQL_COR_CONVERSION" ;;
  }

  dimension: mql_total {
    type: number
    sql: ${TABLE}."MQL_TOTAL" ;;
  }

  dimension: newops_total {
    type: number
    sql: ${TABLE}."NEWOPS_TOTAL" ;;
  }

  dimension: sql_close_conversion {
    type: number
    sql: ${TABLE}."SQL_CLOSE_CONVERSION" ;;
  }

  dimension: sql_total {
    type: number
    sql: ${TABLE}."SQL_TOTAL" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
