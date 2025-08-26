const ventas = [
  {
    cliente: 'Juan',
    productos: [
      { nombre: 'smartphone', cantidad: 1, precio: 350 },
      { nombre: 'laptop', cantidad: 1, precio: 800 },
    ],
  },
  {
    cliente: 'Ana',
    productos: [
      { nombre: 'smartphone', cantidad: 2, precio: 350 },
      { nombre: 'cámara', cantidad: 1, precio: 250 },
    ],
  },
  {
    cliente: 'Pedro',
    productos: [
      { nombre: 'laptop', cantidad: 1, precio: 800 },
      { nombre: 'cámara', cantidad: 2, precio: 250 },
    ],
  },
];
// Calcular el subtotal de cada venta
const calcularSubtotal = (venta) => {
    return venta.productos.reduce((total, producto) => {
        return total + producto.cantidad * producto.precio;
    }, 0);
}
console.log("Subtotales de cada venta:");
const subtotales = ventas.map(calcularSubtotal);
subtotales.forEach((subtotal, index) => {
    console.log(`Venta ${index + 1} (Cliente: ${ventas[index].cliente}): $${subtotal}`);
});

// Calcular el total de todas las ventas.
const totalVentas = subtotales.reduce((total, subtotal) => total + subtotal, 0);
console.log("Total de todas las ventas:", totalVentas);

// Extraer una lista de todos los productos vendidos (sin repeticiones).
const productosVendidos = new Set();
ventas.forEach(venta => {
    venta.productos.forEach(producto => {
        productosVendidos.add(producto.nombre);
    });
});
console.log("Productos vendidos (sin repeticiones):", Array.from(productosVendidos));

// Cantidad de productos vendidos por categoria.
const cantidadPorProducto = {};
ventas.forEach(venta => {
    venta.productos.forEach(producto => {
        if (cantidadPorProducto[producto.nombre]) {
            cantidadPorProducto[producto.nombre] += producto.cantidad;
        } else {
            cantidadPorProducto[producto.nombre] = producto.cantidad;
        }
    });
});
console.log("Cantidad de productos vendidos por categoria:", cantidadPorProducto);
