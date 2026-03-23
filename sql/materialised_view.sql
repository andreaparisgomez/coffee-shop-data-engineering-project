-- PostgreSQL materialised view
-- Task: Create a materialised view for product information
-- Purpose: Combine product and product type data for external use

CREATE MATERIALIZED VIEW product_info_m_view AS
SELECT 
    product.product_name,
    product.description,
    product_type.product_category
FROM product
JOIN product_type
    ON product.product_type_id = product_type.product_type_id;

-- Refresh the materialised view to ensure it contains data
REFRESH MATERIALIZED VIEW product_info_m_view;

-- Example query to view the results
SELECT * FROM product_info_m_view; 
