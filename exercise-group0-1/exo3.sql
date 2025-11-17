--1. Afficher les commandes où le nombre d'articles de la commande est supérieur à 5.

SELECT OrderID FROM [Order details] od
WHERE od.Quantity > 5


--2. Afficher les clients pour lesquels plus de 8 commandes ont été exécutées en 1998 
--(trier les résultats par ordre décroissant du coût total d'expédition pour chaque client).

SELECT c.CompanyName, 
    COUNT(o.OrderID) AS NombreDeCommandes, 
    SUM(o.Freight) AS CoutTotalExpedition
FROM Orders AS o
JOIN Customers AS c ON o.CustomerID = c.CustomerID
WHERE YEAR(o.OrderDate) = 1998
GROUP BY c.CustomerID, c.CompanyName
HAVING COUNT(o.OrderID) > 8
ORDER BY SUM(o.Freight) DESC;