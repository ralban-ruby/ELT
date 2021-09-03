view: jace_report {
  sql_table_name: "RS"."JACE_REPORT"
    ;;

  dimension: calls_handled {
    type: number
    sql: ${TABLE}."calls_handled" ;;
  }

  dimension: calls_offered {
    type: number
    sql: ${TABLE}."calls_offered" ;;
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

  dimension: floor_hours {
    type: number
    sql: ${TABLE}."Floor Hours" ;;
  }

  dimension: minutes {
    type: number
    sql: ${TABLE}."Minutes" ;;
  }

  dimension: paid_hours {
    type: number
    sql: ${TABLE}."Paid Hours" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
