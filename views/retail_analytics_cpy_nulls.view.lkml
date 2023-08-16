# The name of this view in Looker is "Retail Analytics Cpy Nulls"
view: retail_analytics_cpy_nulls {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `tellius-dev.test_dataset.RetailAnalytics_cpy_nulls` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Category" in Explore.

  dimension: category {
    type: string
    sql: ${TABLE}.Category ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: discount {
    type: number
    sql: ${TABLE}.Discount ;;
  }

  dimension: market {
    type: string
    sql: ${TABLE}.Market ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: order {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.Order_Date ;;
  }

  dimension: order_id {
    type: string
    sql: ${TABLE}.Order_ID ;;
  }

  dimension: order_priority {
    type: string
    sql: ${TABLE}.Order_Priority ;;
  }

  dimension: orders_market {
    type: string
    sql: ${TABLE}.Orders_Market ;;
  }

  dimension: orders_region {
    type: string
    sql: ${TABLE}.Orders_Region ;;
  }

  dimension: people_region {
    type: string
    sql: ${TABLE}.People_Region ;;
  }

  dimension: person {
    type: string
    sql: ${TABLE}.Person ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.Product_Name ;;
  }

  dimension: profit {
    type: number
    sql: ${TABLE}.Profit ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_profit {
    type: sum
    sql: ${profit} ;;  }
  measure: average_profit {
    type: average
    sql: ${profit} ;;  }

  dimension: quantity {
    type: string
    sql: ${TABLE}.Quantity ;;
  }

  dimension: sales {
    type: string
    sql: ${TABLE}.Sales ;;
  }

  dimension: segment {
    type: string
    sql: ${TABLE}.Segment ;;
  }

  dimension: ship_mode {
    type: string
    sql: ${TABLE}.Ship_Mode ;;
  }

  dimension: shipping_cost {
    type: number
    sql: ${TABLE}.Shipping_Cost ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension: string_field_21 {
    type: string
    sql: ${TABLE}.string_field_21 ;;
  }

  dimension: string_field_22 {
    type: string
    sql: ${TABLE}.string_field_22 ;;
  }

  dimension: sub_category {
    type: string
    sql: ${TABLE}.Sub_Category ;;
  }
  measure: count {
    type: count
    drill_fields: [product_name]
  }
}
