view: empdepartement {
  sql_table_name: `chetan_test.Empdepartement`
    ;;

  dimension: date_of_join {
    hidden: yes
    sql: ${TABLE}.Date_of_join ;;
  }

  dimension: dept_name {
    type: string
    sql: ${TABLE}.dept_name ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  measure: count {
    type: count
    drill_fields: [name, dept_name]
  }
}

view: empdepartement__date_of_join {
  dimension_group: empdepartement__date_of_join {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: empdepartement__date_of_join ;;
  }
}
