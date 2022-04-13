-- DECLARE @studentId UNIQUEIDENTIFIER = (SELECT NEWID())

-- SELECT * FROM Course
SELECT * FROM Student
SELECT * FROM StudentCourse

INSERT INTO 
    Student ([Id], [Name], Email, Document, Phone, Birthdate, CreateDate)
VALUES (
    '9b7a2622-717c-4dce-a788-9d7ec07bfa3f',
    'Jairo Caetano Junior',
    'jairo@email.com',
    '12345678901',
    '47992670261',
    NULL,
    GETDATE()
)

INSERT INTO
    StudentCourse
VALUES (
    '5c349848-e717-9a7d-1241-0e6500000000',
    '9b7a2622-717c-4dce-a788-9d7ec07bfa3f',
    0,
    0,
    GETDATE(),
    GETDATE()
)