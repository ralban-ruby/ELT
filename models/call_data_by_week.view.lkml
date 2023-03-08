view: call_data_by_week {
  derived_table: {
    sql: SELECT
        md.* ,
        dd."DayOfMonth" ,
        hd.HOLIDAYTEXT
      FROM
        "FINANCE"."MOONLIGHT_DATA" md
      JOIN RUBY.MASTERDATA.DIMDATE dd ON
        md.NOMINALDATE = dd."Date"
      LEFT OUTER JOIN RUBY.MASTERDATA.DIMHOLIDAY hd ON
        md.NOMINALDATE = hd.DATE_AT
       ;;
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
    sql: ${TABLE}.NOMINALDATE;;
  }

  dimension: hourspaid {
    type: number
    sql: ${TABLE}."HOURSPAID" ;;
  }

  dimension: hoursworked {
    type: number
    sql: ${TABLE}."HOURSWORKED" ;;
  }

  dimension: chats {
    type: number
    sql: ${TABLE}."CHATS" ;;
  }

  dimension: billable_chat_minutes {
    type: number
    sql: ${TABLE}."BILLABLE_CHAT_MINUTES" ;;
  }

  dimension: calls {
    type: number
    label: "Total Calls"
    sql: ${TABLE}."CALLS" ;;
  }

  dimension: billable_call_minutes {
    type: number
    label: "Billable Call Time"
    sql: ${TABLE}."BILLABLE_CALL_MINUTES" ;;
  }

  dimension: talktime_minutes {
    type: number
    label: "Total Talk Time"
    sql: ${TABLE}."TALKTIME_MINUTES" ;;
  }

  dimension: acw_minutes {
    type: number
    label: "Total ACW Time"
    sql: ${TABLE}."ACW_MINUTES" ;;
  }

  dimension: hold_minutes {
    type: number
    label: "Total Hold Time"
    sql: ${TABLE}."HOLD_MINUTES" ;;
  }

  dimension: total_call_handle_time {
    type: number
    label: "Total Handle Time"
    sql: ${TABLE}."TOTAL_CALL_HANDLE_TIME" ;;
  }

  dimension: no_acd_minutes {
    type: number
    sql: ${TABLE}."NO_ACD_MINUTES" ;;
  }

  dimension: day_of_month {
    type: number
    sql: ${TABLE}."DayOfMonth" ;;
  }

  dimension: holidaytext {
    type: string
    sql: ${TABLE}."HOLIDAYTEXT" ;;
  }

}
