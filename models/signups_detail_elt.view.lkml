view: signups_detail_elt {
  sql_table_name: "MARKETING"."SIGNUPS_DETAIL_ELT"
    ;;

  dimension: counto_id {
    type: number
    sql: ${TABLE}."COUNT(O.ID)" ;;
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

  dimension: product {
    type: string
    sql: ${TABLE}."PRODUCT" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
