<div class="row" >
	<div class="col-md-12">
<a href="?controlador=usuario&accion=frmCrearUsuario" class="btn btn-primary">crear usuario</a>
<a href="?controlador=usuario&accion=frmBusqueda" class="btn btn-primary">buscar usuario</a>
<br />
<?php
echo "<table class = 'table table-hover'>";
echo "<tr>";
echo "<th>NOMBRES</th>";
echo "<th>CORREO</th>";
echo "<th>TELEFONO</th>";
echo "<th></th>";
echo "<th></th>";
echo "</tr>";
foreach ($datos as $key => $value) {
	echo "<tr id='fila".$value['usu_id']."'>";
echo "<th>".$value['usu_nombre']."</th>";
echo "<th>".$value['usu_correo']."</th>";
echo "<th>".$value['usu_telefono']."</th>";
echo "<th> <a href='?controlador=usuario&accion=frmEditar&id=".$value['usu_id']."'>EDITAR<a/></th>";
echo "<th> <a href='?controlador=usuario&accion=eliminar&id=".$value['usu_id']."' class='eliminarUsuario' 
     data-url='?controlador=usuario&accion=eliminar&id=".$value['usu_id']."&op=1'
     data-id='".$value['usu_id']."'
     >ELIMINAR<a/></th>";
echo "</tr>";
}
echo "</table >";
?>
</div>
</div>
