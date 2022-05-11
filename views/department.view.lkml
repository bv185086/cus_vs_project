view: department {
  sql_table_name: `chetan_test.Department`
    ;;

  dimension: date_of_join {
    hidden: yes
    sql: ${TABLE}.Date_of_join ;;
  }

  dimension: dept_name {
    type: string
    description: "Department of employee"
    sql: ${TABLE}.Dept_name ;;
  }

  dimension: emp_name {
    type: string
    description: "Name of employee"
    sql: ${TABLE}.Emp_name ;;
  }

  measure: count {
    type: count
    drill_fields: [emp_name, dept_name]
  }
}

view: department__date_of_join {
  dimension_group: department__date_of_join {
    type: time
    description: "Employee date of joining"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: department__date_of_join ;;
  }
}
