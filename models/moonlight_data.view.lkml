view: moonlight_data {
  sql_table_name: "FINANCE"."MOONLIGHT_DATA"
    ;;

  dimension: acw_minutes {
    type: number
    sql: ${TABLE}."ACW_MINUTES" ;;
  }

  dimension: billable_call_minutes {
    type: number
    sql: ${TABLE}."BILLABLE_CALL_MINUTES" ;;
  }

  dimension: billable_chat_minutes {
    type: number
    sql: ${TABLE}."BILLABLE_CHAT_MINUTES" ;;
  }

  dimension: calls {
    type: number
    sql: ${TABLE}."CALLS" ;;
  }

  dimension: chats {
    type: number
    sql: ${TABLE}."CHATS" ;;
  }

  dimension: hold_minutes {
    type: number
    sql: ${TABLE}."HOLD_MINUTES" ;;
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

  dimension: no_acd_minutes {
    type: number
    sql: ${TABLE}."NO_ACD_MINUTES" ;;
  }

  dimension_group: nominaldate {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      year,
      day_of_week,
      hour,
      minute,
      second,
      week_of_year,
      day_of_month,
      quarter,
      month_name,
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."NOMINALDATE" ;;
  }

  dimension: week_num {
    type: string
    sql: CASE
      WHEN date_part('day', ${TABLE}."NOMINALDATE") BETWEEN 1 AND 7 THEN 'Week 1'
      WHEN date_part('day', ${TABLE}."NOMINALDATE") BETWEEN 8 AND 14 THEN 'Week 2'
      WHEN date_part('day', ${TABLE}."NOMINALDATE") BETWEEN 15 AND 21 THEN 'Week 3'
      WHEN date_part('day', ${TABLE}."NOMINALDATE") BETWEEN 22 AND 28 THEN 'Week 4'
      WHEN date_part('day', ${TABLE}."NOMINALDATE") BETWEEN 29 AND 31 THEN 'Remaining Days'
    END ;;
  }

  dimension: talktime_minutes {
    type: number
    sql: ${TABLE}."TALKTIME_MINUTES" ;;
  }

  dimension: total_call_handle_time {
    type: number
    sql: ${TABLE}."TOTAL_CALL_HANDLE_TIME" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

}
