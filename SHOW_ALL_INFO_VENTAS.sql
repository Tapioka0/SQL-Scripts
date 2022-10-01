SELECT * FROM Venta AS v LEFT JOIN Productos AS p ON v.Producto = p.Producto LEFT JOIN Cajeros AS c ON v.Cajero = c.Cajero LEFT JOIN Maquinas_Registradoras AS m ON v.Maquina = m.Maquina;
