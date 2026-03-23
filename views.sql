-- Task: Create a view for payroll company
-- Purpose: Provide staff and location data excluding executive roles

CREATE VIEW staff_locations_view AS
SELECT 
    staff.staff_id,
    staff.first_name,
    staff.last_name,
    staff.location
FROM staff
WHERE "position" NOT IN ('CEO', 'CFO');

SELECT * FROM staff_locations_view;
