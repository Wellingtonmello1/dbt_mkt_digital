WITH leads_qualified AS (

    SELECT
        lead_id,
        campaign_id,
        source,
        status,
        DATE(created_at) AS data_criada

    FROM {{ ref('leads_clean_base') }}

    WHERE status = 'Qualified'

)

SELECT
    *
FROM leads_qualified

WHERE lead_id > 100
  AND lead_id < 120