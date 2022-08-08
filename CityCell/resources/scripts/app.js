
const carrito = document.querySelector('#carrito');
const listaProductos = document.querySelector('#lista-cursos');
const contenedorCarrito = document.querySelector('#lista-carrito tbody');
const vaciarCarritoBtn = document.querySelector('#vaciar-carrito'); 
let articulosCarrito = [];

cargarEventListeners();

function cargarEventListeners() {
     listaProductos.addEventListener('click', agregarProducto);

     carrito.addEventListener('click', eliminaProducto);

     vaciarCarritoBtn.addEventListener('click', vaciarCarrito);

}



function agregarProducto(e) {
     e.preventDefault();
     if(e.target.classList.contains('agregar-carrito')) {
          const producto = e.target.parentElement.parentElement;
          leerDatosProducto(producto);
     }
}

function leerDatosProducto(producto) {
     const infoProducto = {
         imagen: producto.querySelector('img').src,
         titulo: producto.querySelector('h4').textContent,
         precio: producto.querySelector('.u-pull-right ').textContent,
         id: producto.querySelector('a').getAttribute('data-id'),
          cantidad: 1
     }


     if( articulosCarrito.some( prod => prod.id === infoProducto.id ) ) { 
          const productos = articulosCarrito.map( prod => {
               if( prod.id === infoProducto.id ) {
                    prod.cantidad++;
                     return prod;
                } else {
                     return prod;
             }
          })
          articulosCarrito = [...productos];
     }  else {
          articulosCarrito = [...articulosCarrito, infoProducto];
     }

     carritoHTML();
}



function eliminaProducto(e) {
     e.preventDefault();
    if (e.target.classList.contains('borrar-producto') ) {
          const productoId = e.target.getAttribute('data-id')
          
          articulosCarrito = articulosCarrito.filter(curso => producto.id !== productoId);

          carritoHTML();
     }
}


function carritoHTML() {

     vaciarCarrito();

     articulosCarrito.forEach(producto => {
          const row = document.createElement('tr');
          row.innerHTML = `
               <td>  
                    <img src="${producto.imagen}" width=100>
               </td>
               <td>${producto.titulo}</td>
               <td>${producto.precio}</td>
               <td>${producto.cantidad} </td>
               <td>
                    <a href="#" class="borrar-producto" data-id="${producto.id}">X</a>
               </td>
          `;
          contenedorCarrito.appendChild(row);
     });

}

function vaciarCarrito() {
   


     while(contenedorCarrito.firstChild) {
          contenedorCarrito.removeChild(contenedorCarrito.firstChild);
      }
}
