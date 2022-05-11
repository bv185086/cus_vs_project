view: employee {
  sql_table_name: `chetan_test.Employee`
    ;;

  dimension: address {
    type: string
    description: "Address of an employee"
    sql: ${TABLE}.Address ;;
  }

  dimension: age {
    type: number
    description: "Age of employee"
    sql: ${TABLE}.Age ;;
  }

  dimension: emp_id {
    type: string
    description: "Employee id"
    sql: ${TABLE}.EmpId ;;
  }

  dimension: hobby {
    hidden: yes
    sql: ${TABLE}.Hobby ;;
  }

  dimension: name {
    type: string
    description: "Name of employee"
    sql: ${TABLE}.Name ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}

view: employee__hobby {
  dimension: employee__hobby {
    type: string
    description: "Hobby of employee"
    sql: employee__hobby ;;
  }
}
