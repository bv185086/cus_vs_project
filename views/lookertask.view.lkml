view: lookertask {
  sql_table_name: `chetan_test.lookertask`
    ;;

  dimension: field1 {
    type: number
    description: "Field1"
    sql: ${TABLE}.Field1 ;;
  }

  dimension: field2 {
    type: number
    description: "Field2"
    sql: ${TABLE}.Field2 ;;
  }

  dimension: field3 {
    type: number
    description: "Field3"
    sql: ${TABLE}.Field3 ;;
  }

  dimension: field4 {
    type: number
    description: "Field4"
    sql: ${TABLE}.Field4 ;;
  }

  dimension: field5 {
    type: number
    description: "Field5"
    sql: ${TABLE}.Field5 ;;
  }

  dimension: field6 {
    type: number
    description: "Field6"
    sql: ${TABLE}.Field6 ;;
  }

  dimension: field7 {
    type: number
    description: "Field7"
    sql: ${TABLE}.Field7 ;;
  }

  dimension: field8 {
    type: number
    description: "Field8"
    sql: ${TABLE}.Field8 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
