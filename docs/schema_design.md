# Schema Design

## Objective
Design a relational database to support a multi-location coffee shop chain.

## Approach
The schema was designed using normalisation principles to reduce redundancy and ensure data integrity.

## Key Decisions

### Separation of Transactions and Line Items
A `sales_detail` table was introduced to store product-level data (quantity, price), removing repeating groups from `sales_transaction`.

### Product Classification
A `product_type` table was created to separate product categories and types from the main product table.

### Staff and Location Relationship
The original dataset stored staff location as a text field. This was replaced with a foreign key (`sales_outlet_id`) referencing the `sales_outlet` table.

## Result
The final schema follows third normal form (3NF) and supports scalable, maintainable data operations.
