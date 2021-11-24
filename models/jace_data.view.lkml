view: jace_data {
  sql_table_name: "FINANCE"."JACE_DATA"
    ;;

  dimension: call_minutes {
    type: number
    sql: ${TABLE}."CALL_MINUTES" ;;
  }

  dimension: calls {
    type: number
    sql: ${TABLE}."CALLS" ;;
  }

  dimension: chat_minutes {
    type: number
    sql: ${TABLE}."CHAT_MINUTES" ;;
  }

  dimension: chats {
    type: number
    sql: ${TABLE}."CHATS" ;;
  }

  dimension: hourspaid {
    type: number
    value_format_name: id
    sql: ${TABLE}."HOURSPAID" ;;
  }

  dimension: hoursworked {
    type: number
    sql: ${TABLE}."HOURSWORKED" ;;
  }

  dimension_group: nominaldate {
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
    sql: ${TABLE}."NOMINALDATE" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
