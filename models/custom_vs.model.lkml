connection: "custom_vis"

# include all the views
include: "/views/**/*.view"

datagroup: custom_vs_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: custom_vs_default_datagroup

explore: department {
  join: department__date_of_join {
    view_label: "Department: Date Of Join"
    sql: LEFT JOIN UNNEST(${department.date_of_join}) as department__date_of_join ;;
    relationship: one_to_many
  }
}

explore: lookertask {}

explore: employee {
  join: employee__hobby {
    view_label: "Employee: Hobby"
    sql: LEFT JOIN UNNEST(${employee.hobby}) as employee__hobby ;;
    relationship: one_to_many
  }
}

explore: empdepartement {
  join: empdepartement__date_of_join {
    view_label: "Empdepartement: Date Of Join"
    sql: LEFT JOIN UNNEST(${empdepartement.date_of_join}) as empdepartement__date_of_join ;;
    relationship: one_to_many
  }
}

explore: random {}
