<%-- Document : index Created on : 3/10/2024, 11:08:18 p. m. Author : ander --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>RRHH - INDEX</title>

    <!-- Styles -->
    <!-- Bootstrap 5 -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
      crossorigin="anonymous"
    />
    <!-- CSS -->
    <style type="text/css">
      body {
        background-color: #222222;
      }
    </style>
  </head>
  <body>
    <div class="container-fluid">
      <div class="text-center">
        <h1 class="my-4" style="color: aliceblue; font-weight: bold">
          Listado empleados
        </h1>
        <hr class="border border-secondary border-2 opacity-50" />
      </div>

      <div class="container">
        <div class="col">
          <button
            type="button"
            class="btn btn-primary my-2"
            data-bs-toggle="modal"
            data-bs-target="#agregarModal"
          >
            Agregar empleado
          </button>

          <!-- Modal para ingresar un nuevo empleado -->
          <div
            class="modal fade"
            id="agregarModal"
            tabindex="-1"
            aria-labelledby="agregarModalLabel"
            aria-hidden="true"
          >
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">
                  <h1 class="modal-title fs-5" id="agregarModalLabel">
                    Agregar Empleado
                  </h1>
                  <button
                    type="button"
                    class="btn-close"
                    data-bs-dismiss="modal"
                    aria-label="Close"
                  ></button>
                </div>
                <div class="modal-body">
                  <form
                    id="formEnviar"
                    class="row g-3 needs-validation"
                    novalidate
                  >
                    <div class="mb-3">
                      <label for="nombre" class="form-label">Nombre</label>
                      <input
                        type="text"
                        class="form-control"
                        id="nombre"
                        name="nombre"
                        placeholder="Nombre del empleado"
                        required
                      />
                      <div class="invalid-feedback">Ingrese un nombre</div>
                    </div>
                    <div class="mb-3">
                      <label for="Departamento" class="form-label"
                        >Departamento</label
                      >
                      <input
                        type="text"
                        class="form-control"
                        id="departamento"
                        name="departamento"
                        placeholder="Departamento del empleado"
                        required
                      />
                      <div class="invalid-feedback">
                        Ingrese un departamento
                      </div>
                    </div>
                    <div class="mb-3">
                      <label for="Sueldo" class="form-label">Sueldo</label>
                      <input
                        type="number"
                        class="form-control"
                        id="sueldo"
                        name="sueldo"
                        placeholder="Sueldo del empleado"
                        required
                      />
                      <div class="invalid-feedback">Ingrese un sueldo</div>
                    </div>

                    <div class="d-grid">
                      <button class="btn btn-primary" type="submit">
                        Agregar
                      </button>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>

          <!-- Tabla para mostrar los datos -->
          <table class="table table-dark table-striped">
            <thead>
              <tr>
                <th scope="col">Nombre</th>
                <th scope="col">Departamento</th>
                <th scope="col">Sueldo</th>
                <th scope="col">Accion</th>
              </tr>
            </thead>
            <tbody id="bodyTabla">
              <tr>
                <td>dfbsdgnsfgnsf</td>
                <td>Otto</td>
                <td>gdrfhbsfggnsfgnsfgn</td>
                <td>
                  <button class="btn btn-primary" type="button">Editar</button>
                  <button class="btn btn-danger" type="button">Eliminar</button>
                </td>
              </tr>
            </tbody>
          </table>

          <!-- Modal para editar un empleado -->
          <div
            class="modal fade"
            id="EditarModal"
            tabindex="-1"
            aria-labelledby="EditarModalLabel"
            aria-hidden="true"
          >
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">
                  <h1 class="modal-title fs-5" id="EditarModalLabel">
                    Editar Empleado
                  </h1>
                  <button
                    type="button"
                    class="btn-close"
                    data-bs-dismiss="modal"
                    aria-label="Close"
                  ></button>
                </div>
                <div class="modal-body">
                  <form
                    id="formEditar"
                    class="row g-3 needs-validation"
                    novalidate
                  >
                    <input type="hidden" id="editarId" />
                    <div class="mb-3">
                      <label for="nombre" class="form-label">Nombre</label>
                      <input
                        type="text"
                        class="form-control"
                        id="editarNombre"
                        placeholder="Nombre del empleado"
                        required
                      />
                      <div class="invalid-feedback">Ingrese un nombre</div>
                    </div>
                    <div class="mb-3">
                      <label for="Departamento" class="form-label"
                        >Departamento</label
                      >
                      <input
                        type="text"
                        class="form-control"
                        id="editarDepartamento"
                        placeholder="Departamento del empleado"
                        required
                      />
                      <div class="invalid-feedback">
                        Ingrese un departamento
                      </div>
                    </div>
                    <div class="mb-3">
                      <label for="Sueldo" class="form-label">Sueldo</label>
                      <input
                        type="number"
                        class="form-control"
                        id="editarSueldo"
                        placeholder="Sueldo del empleado"
                        required
                      />
                      <div class="invalid-feedback">Ingrese un sueldo</div>
                    </div>

                    <div class="d-grid">
                      <button class="btn btn-primary" type="submit">
                        Guardar cambios
                      </button>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
      crossorigin="anonymous"
    ></script>
    <script>
      document
        .getElementById("formEnviar")
        .addEventListener("submit", function (event) {
          event.preventDefault();

          const nombre = document.getElementById("nombre").value;
          const departamento = document.getElementById("departamento").value;
          const sueldo = document.getElementById("sueldo").value;

          const empleado = {
            nombre: nombre,
            departamento: departamento,
            sueldo: sueldo,
          };

          fetch("http://localhost:8081/rh-app/empleados", {
            method: "POST",
            headers: {
              "Content-Type": "application/json",
            },
            body: JSON.stringify(empleado),
          })
            .then((response) => response.text())
            .then((data) => {
              alert("Empleado agregado exitosamente");
              location.reload();
            })
            .catch((error) => {
              alert("Hubo un error al agregar el empleado");
            });
        });
    </script>
    <script>
      // Funcion que carga los empleados al cargar la página
      window.onload = function () {
        const url = "http://localhost:8081/rh-app/empleados";

        // Realizamos la solicitud GET
        fetch(url)
          .then((response) => response.json())
          .then((data) => {
            llenarTabla(data);
          })
          .catch((error) => {
            console.error("Error al cargar los empleados:", error);
          });
      };

      // Funcion que llena la tabla
      function llenarTabla(empleados) {
        const tablaBody = document.getElementById("bodyTabla");

        tablaBody.innerHTML = "";

        // Recorremos los empleados recibidos para llenar ls filas
        empleados.forEach((empleado) => {
          const fila = document.createElement("tr");

          const nombreCelda = document.createElement("td");
          nombreCelda.textContent = empleado.nombre;

          const departamentoCelda = document.createElement("td");
          departamentoCelda.textContent = empleado.departamento;

          const sueldoCelda = document.createElement("td");
          sueldoCelda.textContent = empleado.sueldo;

          const accionCelda = document.createElement("td");

          // Botones de editar y eliminar
          const editarBoton = document.createElement("button");
          editarBoton.classList.add("btn", "btn-primary");
          editarBoton.textContent = "Editar";
          editarBoton.onclick = function () {
            editarEmpleado(empleado.idEmpleado);
          };

          const eliminarBoton = document.createElement("button");
          eliminarBoton.classList.add("btn", "btn-danger");
          eliminarBoton.textContent = "Eliminar";
          eliminarBoton.onclick = function () {
            eliminarEmpleado(empleado.idEmpleado);
          };

          accionCelda.appendChild(editarBoton);
          accionCelda.appendChild(eliminarBoton);
          fila.appendChild(nombreCelda);
          fila.appendChild(departamentoCelda);
          fila.appendChild(sueldoCelda);
          fila.appendChild(accionCelda);

          tablaBody.appendChild(fila);
        });
      }

      //   function editarEmpleado(idEmpleado) {
      //     console.log("Editar empleado con ID:", idEmpleado);
      //   }

      //   function eliminarEmpleado(idEmpleado) {
      //     console.log("Eliminar empleado con ID:", idEmpleado);
      //   }
    </script>

    <script>
      function editarEmpleado(idEmpleado) {
        const idString = String(idEmpleado);

        const ruta = "http://localhost:8081/rh-app/empleados/" + idString;

        fetch(ruta)
          .then((response) => response.json())
          .then((data) => {
            // console.log(data);
            // return;

            document.getElementById("editarId").value = data.idEmpleado;
            document.getElementById("editarNombre").value = data.nombre;
            document.getElementById("editarDepartamento").value =
              data.departamento;
            document.getElementById("editarSueldo").value = data.sueldo;

            const editarModal = new bootstrap.Modal(
              document.getElementById("EditarModal")
            );
            editarModal.show();
          })
          .catch((error) => {
            console.error("Error al cargar los datos del empleado:", error);
          });

        // Añadir listener al formulario para manejar el submit
        document.getElementById("formEditar").onsubmit = function (event) {
          event.preventDefault(); // Prevenir la accion por defecto del formulario

          // Obtener los datos del formulario
          const id = document.getElementById("editarId").value;
          const nombre = document.getElementById("editarNombre").value;
          const departamento =
            document.getElementById("editarDepartamento").value;
          const sueldo = document.getElementById("editarSueldo").value;

          // Crear objeto de datos
          const empleado = {
            nombre: nombre,
            departamento: departamento,
            sueldo: sueldo,
          };

          const idPut = String(id);

          const rutaPut = "http://localhost:8081/rh-app/empleados/" + idPut;

          fetch(rutaPut, {
            method: "PUT",
            headers: {
              "Content-Type": "application/json",
            },
            body: JSON.stringify(empleado),
          })
            .then((response) => {
              if (response.ok) {
                return response.json();
              }
              throw new Error("Error en la actualizacion");
            })
            .then((data) => {
              alert("El empleado se actualizo exitosamente");
              location.reload();
            })
            .catch((error) => {
              console.error("Error al actualizar el empleado:", error);
            });
        };
      }

      // Función para eliminar un empleado
      function eliminarEmpleado(idEmpleado) {
        const idString = String(idEmpleado);

        const ruta = "http://localhost:8081/rh-app/empleados/" + idString;
        // console.log(ruta);return;

        if (confirm("¿Esta seguro de que quiere eliminar este empleado?")) {
          fetch(ruta, {
            method: "DELETE",
          })
            .then((response) => {
              if (response.ok) {
                console.log("Empleado eliminado");
                location.reload();
              } else {
                throw new Error("Error al eliminar el empleado");
              }
            })
            .catch((error) => {
              console.error("Error al eliminar el empleado:", error);
            });
        }
      }
    </script>

    <script>
      // Funcion para la s validaciones de los formularios
      (() => {
        "use strict";

        const forms = document.querySelectorAll(".needs-validation");

        Array.from(forms).forEach((form) => {
          form.addEventListener(
            "submit",
            (event) => {
              if (!form.checkValidity()) {
                event.preventDefault();
                event.stopPropagation();
              }

              form.classList.add("was-validated");
            },
            false
          );
        });
      })();
    </script>
  </body>
</html>
