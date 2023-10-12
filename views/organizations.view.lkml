# The name of this view in Looker is "Organizations"
view: organizations {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: ui_test.organizations ;;
  drill_fields: [organization_id]

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: organization_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.Organization_Id ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Country" in Explore.

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: founded {
    type: number
    sql: ${TABLE}.Founded ;;
  }

  dimension: index {
    type: number
    sql: ${TABLE}.`Index` ;;
  }

  dimension: industry {
    type: string
    sql: ${TABLE}.Industry ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: number_of_employees {
    type: number
    sql: ${TABLE}.Number_Of_Employees ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_number_of_employees {
    type: sum
    sql: ${number_of_employees} ;;  }
  measure: average_number_of_employees {
    type: average
    sql: ${number_of_employees} ;;  }

  dimension: website {
    type: string
    sql: ${TABLE}.Website ;;
  }
  measure: count {
    type: count
    drill_fields: [organization_id, name]
  }
}
