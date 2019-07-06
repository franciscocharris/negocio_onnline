<fieldset>
	<legend>Registrar</legend>
	<form action="?controlador=usuario&accion=regUsuario&op=1" method="post" id="frmCrearUsuario" >

			<td><label  for="nombre">nombre</label></td>
			<td><input id="nombre"   type="text" name="nombre" required=""  class="form-control"></td>
			<td><label for="correo">correo</label></li></td>
			<td><input id="correo" type="email" name="correo" required="" class="form-control"></td>
			<td><label for="telefono">telefono</label></td>
			<td><input id="telefono" type="text" name="telefono" placeholder="recuerde que su telefono sera su contraseña(esto lo puede cambiar una vez ingresado)" required="" class="form-control"></td>
	
			<input type="submit" name="enviar" value="guardar" class="btn btn-primary"> <h5>¡una vez se registre, inicie seccion!</h5>
	</form>
</fieldset>