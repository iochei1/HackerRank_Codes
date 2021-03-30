SELECT N, CASE
        WHEN P IS NULL THEN 'Root'
        WHEN N IN (SELECT Distinct P FROM BST) THEN 'Inner'
        ELSE 'Leaf'
    END
FROM BST
ORDER BY 1;