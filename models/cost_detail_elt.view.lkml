view: cost_detail_elt {
  sql_table_name: "MARKETING"."COST_DETAIL_ELT"
    ;;

  dimension_group: monthly_spend {
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
    sql: ${TABLE}."MONTHLY_SPEND" ;;
  }

  dimension: total {
    type: number
    sql: ${TABLE}."TOTAL" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
