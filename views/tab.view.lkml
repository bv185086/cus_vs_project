view: tab {
  derived_table: {
    sql: SELECT * FROM UNNEST(ARRAY<STRUCT<sort_order INT64, tabs STRING, id STRING>>[
      (1, 'Service Availability', '502'),
      (2, 'Occupancy', '503'),
      (3, 'Cash Management', '504')])
      ;;
  }



  dimension: id {
    type: string
    sql: ${TABLE}.id ;;
  }



  dimension: tabs {
    type: string
    sql: ${TABLE}.tabs ;;
    link: {
      label: "Open"
      url: "dashboards/{{tabs.id}}"
    }
  }



  dimension: sort_order {
    type: string
    sql: ${TABLE}.sort_order ;;
  }
}
