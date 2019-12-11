<?php 
include 'cabeza.php'; 

?>
  <section class="jumbotron orange shadow p-3 mb-5 rounded pt-5">
    <div class="row">
      <div class="col-8">
        <h3 class="display-4 text-light"><strong>REGISTRO DEL TALLER</strong></h3>
        <!--Opciones e Información-->
          <a href="#" data-toggle="modal" data-target="#exampleModal" class="btn orange m-5"><span
              class="oi oi-info">Información</span></a>
      </div>
      <div class="col-4"><img class="img-fluid" src="images/logo.png" alt="Logo del Sena" width="250"></div>
    </div>
  </section>
  <section class="container">
    <div class="row">
      <article class="col-4">
        <h3 class="text-center">Llena los siguientes datos</h3>
        <hr>
        <br>
        <form action="" method="post">
          <br>
          <div class="form-group row">
            <label for="inputap" class="col-sm-4 col-form-label">Nombre del taller:</label>
            <div class="col-sm-8">
              <input type="text" name="txtall" class="form-control" id="aprendiz"
                placeholder="Ingrese nombre del taller">
            </div>
          </div>
          <div class="form-group row">
            <label for="inputap" class="col-sm-4 col-form-label">Descripción:</label>
            <div class="col-sm-8">
              <input type="text" name="txtdes" class="form-control" id="aprendiz"
                placeholder="Ingrese descripción del taller">
            </div>
          </div>

          <div class="form-group row">
            <label for="inputap" class="col-sm-4 col-form-label">Hora de inicio:</label>
            <div class="col-sm-8">
              <input type="time" name="txthora" class="form-control" id="hora" placeholder="hora de inicio" step="600">
            </div>
            <button type="submit" class="btn orange">Submit</button>
          </div>
          
          <div class="form-group row" id="acceso">
            <!--Control de Acceso-->
          </div>
        </form>
      </article>
      <!--lista de talleres-->
      <div class="col-8">
        <table class="table">
          <thead class="thead-inverse">
            <tr>
              <th>Nombre taller</th>
              <th>Descripción </th>
              <th>Hora de inicio</th>
            </tr>
          </thead>
          <tbody>
            <tr>
                <th scope="row">...</th>
                <td>...</td>
                <td>...</td>
              </tr>
        </tbody>
      </div>
    </div>
  </section>
  <!-- Modal Información -->
  <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Acerca de este software:</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <div class="row">
            <div class="col-4">
              <h4 class="text-info">Diseño y pruebas:</h4>
              <hr>
              <p class="text-center"><strong>Eder Lara Trujillo</strong><br>Ingeniero de Sistemas</p>
              <p class="text-center"><strong>Yeisson Osorno</strong><br>Estudiante ADSI</p>
            </div>
            <div class="col-4">
              <h4 class="text-info">Desarrollo y Programación:</h4>
              <hr>
              <p class="text-center"><strong>Eder Lara Trujillo</strong><br>Ingeniero de Sistemas</p>
              <p class="text-center"><strong>Yeisson Osorno</strong><br>Estudiante ADSI</p>
            </div>
            <div class="col-4">
              <h4 class="text-info">Implementación y Soporte:</h4>
              <hr>
              <p class="text-center"><strong>Eder Lara Trujillo</strong><br>Ingeniero de Sistemas</p>
              <p class="text-center"><strong>Yeisson Osorno</strong><br>Estudiante ADSI</p>
            </div>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-dark" data-dismiss="modal">Cerrar</button>
        </div>
      </div>
    </div>
  </div>
