view: cost_detail_elt {
  sql_table_name: "MARKETING"."COST_DETAIL_ELT"
    ;;

  dimension: cpmql {
    type: number
    sql: ${TABLE}."CPMQL" ;;
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

  dimension: mcac {
    type: number
    sql: ${TABLE}."MCAC" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
