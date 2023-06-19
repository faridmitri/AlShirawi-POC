# The name of this view in Looker is "Tbl Bi Plant Usage"
view: tbl_bi_plant_usage {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `Poc_phase1.Tbl_BI_PlantUsage`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: pu_calendar {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.PU_CalendarDate ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Pu Charfld1" in Explore.

  dimension: pu_charfld1 {
    type: string
    sql: ${TABLE}.PU_CHARFLD1 ;;
  }

  dimension: pu_charfld2 {
    type: string
    sql: ${TABLE}.PU_CHARFLD2 ;;
  }

  dimension: pu_cnt_alloc_no {
    type: number
    sql: ${TABLE}.PU_Cnt_AllocNo ;;
  }

  dimension: pu_cnt_brch_code {
    type: number
    sql: ${TABLE}.PU_Cnt_BrchCode ;;
  }

  dimension: pu_cnt_comp_code {
    type: number
    sql: ${TABLE}.PU_Cnt_CompCode ;;
  }

  dimension: pu_cnt_contract_no {
    type: number
    sql: ${TABLE}.PU_Cnt_ContractNo ;;
  }

  dimension: pu_cnt_doc_pfx {
    type: string
    sql: ${TABLE}.PU_Cnt_DocPfx ;;
  }

  dimension: pu_cnt_doc_type {
    type: string
    sql: ${TABLE}.PU_Cnt_DocType ;;
  }

  dimension: pu_cnt_line_type {
    type: string
    sql: ${TABLE}.PU_Cnt_LineType ;;
  }

  dimension: pu_cnt_locn_code {
    type: number
    sql: ${TABLE}.PU_Cnt_LocnCode ;;
  }

  dimension: pu_cnt_serial_no {
    type: number
    sql: ${TABLE}.PU_Cnt_SerialNo ;;
  }

  dimension: pu_cnt_unit_no {
    type: number
    sql: ${TABLE}.PU_Cnt_UnitNo ;;
  }

  dimension: pu_cost_amt_per_day_dep {
    type: number
    sql: ${TABLE}.PU_Cost_AmtPerDay_Dep ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_pu_cost_amt_per_day_dep {
    type: sum
    sql: ${pu_cost_amt_per_day_dep} ;;
  }

  measure: average_pu_cost_amt_per_day_dep {
    type: average
    sql: ${pu_cost_amt_per_day_dep} ;;
  }

  dimension: pu_cost_amt_per_day_ext {
    type: number
    sql: ${TABLE}.PU_Cost_AmtPerDay_Ext ;;
  }

  dimension: pu_cost_amt_per_day_ind {
    type: number
    sql: ${TABLE}.PU_Cost_AmtPerDay_Ind ;;
  }

  dimension: pu_cost_amt_per_day_lab {
    type: number
    sql: ${TABLE}.PU_Cost_AmtPerDay_Lab ;;
  }

  dimension: pu_cost_amt_per_day_par {
    type: number
    sql: ${TABLE}.PU_Cost_AmtPerDay_Par ;;
  }

  dimension: pu_created_by {
    type: string
    sql: ${TABLE}.PU_CreatedBy ;;
  }

  dimension_group: pu_created_date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.PU_CreatedDate ;;
  }

  dimension: pu_created_time {
    type: string
    sql: ${TABLE}.PU_CreatedTime ;;
  }

  dimension: pu_creation_remarks {
    type: string
    sql: ${TABLE}.PU_CreationRemarks ;;
  }

  dimension: pu_cust_code {
    type: number
    sql: ${TABLE}.PU_CustCode ;;
  }

  dimension: pu_cust_name_manual {
    type: string
    sql: ${TABLE}.PU_CustName_Manual ;;
  }

  dimension: pu_cust_name_system {
    type: string
    sql: ${TABLE}.PU_CustName_System ;;
  }

  dimension_group: pu_datefld1 {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.PU_DATEFLD1 ;;
  }

  dimension_group: pu_datefld2 {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.PU_DATEFLD2 ;;
  }

  dimension: pu_inv_amt_per_day {
    type: number
    sql: ${TABLE}.PU_Inv_AmtPerDay ;;
  }

  dimension: pu_inv_base_amt {
    type: number
    sql: ${TABLE}.PU_Inv_BaseAmt ;;
  }

  dimension: pu_inv_base_curr {
    type: string
    sql: ${TABLE}.PU_Inv_BaseCurr ;;
  }

  dimension: pu_inv_brch_code {
    type: number
    sql: ${TABLE}.PU_Inv_BrchCode ;;
  }

  dimension: pu_inv_comp_code {
    type: number
    sql: ${TABLE}.PU_Inv_CompCode ;;
  }

  dimension_group: pu_inv {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.PU_Inv_Date ;;
  }

  dimension: pu_inv_doc_pfx {
    type: string
    sql: ${TABLE}.PU_Inv_DocPfx ;;
  }

  dimension: pu_inv_doc_type {
    type: string
    sql: ${TABLE}.PU_Inv_DocType ;;
  }

  dimension_group: pu_inv_from {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.PU_Inv_FromDate ;;
  }

  dimension: pu_inv_invice_no {
    type: number
    sql: ${TABLE}.PU_Inv_InviceNo ;;
  }

  dimension: pu_inv_locn_code {
    type: number
    sql: ${TABLE}.PU_Inv_LocnCode ;;
  }

  dimension: pu_inv_prd_in_days {
    type: number
    sql: ${TABLE}.PU_Inv_PrdInDays ;;
  }

  dimension_group: pu_inv_rent_from {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.PU_Inv_RentFromDate ;;
  }

  dimension: pu_inv_rent_prd_in_days {
    type: number
    sql: ${TABLE}.PU_Inv_RentPrdInDays ;;
  }

  dimension_group: pu_inv_rent_to {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.PU_Inv_RentToDate ;;
  }

  dimension: pu_inv_serial_no {
    type: number
    sql: ${TABLE}.PU_Inv_SerialNo ;;
  }

  dimension_group: pu_inv_to {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.PU_Inv_ToDate ;;
  }

  dimension: pu_machine_ip {
    type: string
    sql: ${TABLE}.PU_Machine_IP ;;
  }

  dimension: pu_model_code {
    type: string
    sql: ${TABLE}.PU_ModelCode ;;
  }

  dimension: pu_modification_remarks {
    type: string
    sql: ${TABLE}.PU_ModificationRemarks ;;
  }

  dimension: pu_modified_by {
    type: string
    sql: ${TABLE}.PU_ModifiedBy ;;
  }

  dimension_group: pu_modified_date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.PU_ModifiedDate ;;
  }

  dimension: pu_modified_time {
    type: string
    sql: ${TABLE}.PU_ModifiedTime ;;
  }

  dimension: pu_numberfld1 {
    type: number
    sql: ${TABLE}.PU_NUMBERFLD1 ;;
  }

  dimension: pu_numberfld2 {
    type: number
    sql: ${TABLE}.PU_NUMBERFLD2 ;;
  }

  dimension: pu_org_id {
    type: number
    sql: ${TABLE}.PU_OrgId ;;
  }

  dimension: pu_plant_code {
    type: string
    sql: ${TABLE}.PU_PlantCode ;;
  }

  dimension: pu_program_id {
    type: string
    sql: ${TABLE}.PU_Program_ID ;;
  }

  dimension: pu_usage_code {
    type: string
    sql: ${TABLE}.PU_UsageCode ;;
  }

  measure: count {
    type: count
    drill_fields: [pu_created_time]
  }
}
