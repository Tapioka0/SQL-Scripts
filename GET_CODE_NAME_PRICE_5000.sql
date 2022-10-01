SELECT
  v.Cajero,
  c.Nombre,
  count(v.Cajero)
FROM
  Venta AS v
  LEFT JOIN Cajeros AS c ON v.Cajero = c.Cajero
  LEFT JOIN Productos AS p ON v.Producto = p.Producto
where
  p.Producto >= 5000
GROUP BY
  v.Cajero;
