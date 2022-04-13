CREATE OR ALTER VIEW vwCareers AS
    SELECT
        Career.Id,
        Career.Title,
        Career.[Url],
        COUNT(Id) as Courses
        -- Subselect
        -- ( SELECT COUNT(CareerId) FROM CareerItem WHERE CareerId = Id ) AS Courses
    FROM 
        Career
        INNER JOIN CareerItem ON Career.Id = CareerItem.CareerId
    GROUP BY
        Career.Id,
        Career.Title,
        Career.[Url]