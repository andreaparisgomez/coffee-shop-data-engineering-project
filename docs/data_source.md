# Data Source

## Original Dataset

The dataset contained denormalised tables with:
- Transaction records including product-level data
- Product information combining multiple attributes
- Staff location stored as text values

## Transformations Applied

- Split transaction data into `sales_transaction` and `sales_detail`
- Created `product_type` lookup table
- Replaced text-based location with relational foreign key

## Notes

The dataset was used for learning purposes and adapted to demonstrate best practices in relational database design.
