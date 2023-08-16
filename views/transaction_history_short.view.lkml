# The name of this view in Looker is "Transaction History Short"
view: transaction_history_short {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `tellius-dev.test_dataset.transaction_history_short` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Age Grouping" in Explore.

  dimension: age_grouping {
    type: string
    sql: ${TABLE}.age_grouping ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: competition_distance {
    type: number
    sql: ${TABLE}.competition_distance ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_cost {
    type: sum
    sql: ${cost} ;;  }
  measure: average_cost {
    type: average
    sql: ${cost} ;;  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }

  dimension: in_store_assistance_app {
    type: yesno
    sql: ${TABLE}.in_store_assistance_app ;;
  }

  dimension: item {
    type: string
    sql: ${TABLE}.item ;;
  }

  dimension: items_purchased {
    type: number
    sql: ${TABLE}.items_purchased ;;
  }

  dimension: payment_method {
    type: string
    sql: ${TABLE}.payment_method ;;
  }

  dimension: profit {
    type: number
    sql: ${TABLE}.profit ;;
  }

  dimension: records {
    type: number
    sql: ${TABLE}.Records ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: revenue {
    type: number
    sql: ${TABLE}.revenue ;;
  }

  dimension: sales_forecast {
    type: number
    sql: ${TABLE}.sales_forecast ;;
  }

  dimension: satisfaction_score {
    type: number
    sql: ${TABLE}.satisfaction_score ;;
  }

  dimension: seasonal_buyer {
    type: number
    sql: ${TABLE}.seasonal_buyer ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: store_id {
    type: number
    sql: ${TABLE}.store_id ;;
  }

  dimension: store_lat {
    type: number
    sql: ${TABLE}.store_lat ;;
  }

  dimension: store_lon {
    type: number
    sql: ${TABLE}.store_lon ;;
  }

  dimension: store_type {
    type: string
    sql: ${TABLE}.store_type ;;
  }

  dimension: survey_satisfaction_score {
    type: number
    sql: ${TABLE}.survey_satisfaction_score ;;
  }

  dimension: transaction_id {
    type: number
    sql: ${TABLE}.transaction_id ;;
  }
  measure: count {
    type: count
  }
}
