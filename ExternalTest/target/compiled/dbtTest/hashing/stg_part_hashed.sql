

select
CAST(MD5_BINARY(UPPER(TRIM(CAST(SUPPLIERKEY AS VARCHAR)))) AS BINARY(16)) AS SUPP_PK,
CAST(MD5_BINARY(UPPER(TRIM(CAST(PARTKEY AS VARCHAR)))) AS BINARY(16)) AS PART_PK,
 *, TO_DATE('1992-01-08') AS LOADDATE, TO_DATE('1992-01-08') AS EFFECTIVE_FROM, 'TPCH' AS SOURCE FROM DV_PROTOTYPE_DB.SRC_STG.V_SRC_STG_INVENTORY