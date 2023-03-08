view: dimholiday {
  derived_table: {
    sql: Select * from RUBY.MASTERDATA.DIMHOLIDAY
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: date_at {
    type: date
    sql: ${TABLE}."DATE_AT" ;;
  }

  dimension: holidaytext {
    type: string
    sql: ${TABLE}."HOLIDAYTEXT" ;;
  }

  dimension: isweekend {
    type: number
    sql: ${TABLE}."ISWEEKEND" ;;
  }

  set: detail {
    fields: [date_at, holidaytext, isweekend]
  }
}
