CREATE OR ALTER VIEW vwCourses AS
    SELECT
        Course.Id,
        Course.Title,
        Course.Tag,
        Course.[Url],
        Course.Summary,
        Course.CreateDate,
        Category.Title AS Category,
        Author.Name AS Author
    FROM 
        Course
        INNER JOIN Category ON Course.CategoryId = Category.Id
        INNER JOIN Author ON Course.AuthorId = Author.Id
    WHERE
        Course.Active = 1