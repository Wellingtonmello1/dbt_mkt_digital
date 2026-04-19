WITH leads_qualified AS (

    SELECT *
    FROM {{ ref('primeira_consulta') }}
    WHERE status = 'Qualified'

)

SELECT
    *
FROM leads_qualified
WHERE lead_id > 100 AND lead_id < 120