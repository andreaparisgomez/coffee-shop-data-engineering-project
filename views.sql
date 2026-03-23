-- Create a view to list staff and their locations,
-- excluding executive roles (CEO and CFO)

CREATE VIEW staff_locations_view AS
SELECT 
    staff.staff_id,
    staff.first_name,
    staff.last_name,
    staff.location
FROM staff
WHERE "position" NOT IN ('CEO', 'CFO');

-- Example query to view data from the view
SELECT * FROM staff_locations_view;
