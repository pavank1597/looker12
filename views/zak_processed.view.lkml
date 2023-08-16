# The name of this view in Looker is "Zak Processed"
view: zak_processed {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `tellius-dev.test_dataset.zak_processed` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Customer Code" in Explore.

  dimension: customer_code {
    type: string
    sql: ${TABLE}.Customer_Code ;;
  }

  dimension: customer_item_number {
    type: string
    sql: ${TABLE}.Customer_Item_Number ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: date_posted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.Date_Posted ;;
  }

  dimension: financial_group {
    type: string
    sql: ${TABLE}.FinancialGroup ;;
  }

  dimension: gender_demo {
    type: string
    sql: ${TABLE}.Gender_Demo ;;
  }

  dimension: instock {
    type: number
    sql: ${TABLE}.Instock ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_instock {
    type: sum
    sql: ${instock} ;;  }
  measure: average_instock {
    type: average
    sql: ${instock} ;;  }

  dimension: item_category {
    type: string
    sql: ${TABLE}.item_category ;;
  }

  dimension: item_detail {
    type: string
    sql: ${TABLE}.Item_Detail ;;
  }

  dimension: license {
    type: string
    sql: ${TABLE}.License ;;
  }

  dimension: license_animated {
    type: yesno
    sql: ${TABLE}.license_animated ;;
  }

  dimension: license_comicbook {
    type: yesno
    sql: ${TABLE}.license_comicbook ;;
  }

  dimension: of_stores_sold {
    type: number
    sql: ${TABLE}.of_Stores_Sold ;;
  }

  dimension: qty_sold {
    type: number
    sql: ${TABLE}.Qty_Sold ;;
  }

  dimension: sum_of_pos_sales_dollars {
    type: number
    sql: ${TABLE}.SumOfPOS_Sales_Dollars ;;
  }

  dimension: sum_of_qty_avail {
    type: number
    sql: ${TABLE}.SumOfQty_Avail ;;
  }

  dimension: zak_item_number {
    type: string
    sql: ${TABLE}.Zak_Item_Number ;;
  }

  dimension_group: zak_start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.Zak_Start_Date ;;
  }
  measure: count {
    type: count
  }
}
