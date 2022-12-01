<%@page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<!-- Start header section -->
<jsp:include page="header.jsp" flush="true" />

<style>
.riga {
	background: #cbb;
	padding: 20px;
	margin-bottom: 20px;
}
.box-variants{
	margin-top:55px;
}
</style>

<div class="col-sm-12 col-lg-12 riga box-variants">
	<div class="container col-sm-12 col-lg-14">
		<!-- Date Picker -->
		<div class="form-group mb-4">
			<div class="datepicker date input-group">
				<input type="text" placeholder="Choose Date" class="form-control"
					id="fecha1">
				<div class="input-group-append">
					<span class="input-group-text"><i class="fa fa-calendar"></i></span>
				</div>
			</div>
		</div>
		<!-- // Date Picker -->
	</div>


	<!-- Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>

	<!-- Datepicker -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
	<script>
		$(function() {
			$('.datepicker').datepicker({
				language : "es",
				autoclose : true,
				format : "dd/mm/yyyy"
			});
		});
	</script>

	<div class="form-group">
		<label for="coloreVariante" class="col-xs-12 control-label">Select movie</label>

		<div class="col-xs-12 ">
			<select data-selectprod-id="138"
				class="form-control selectprodvariants  " name="coloreVariante[]">
				<option selected="" value="">...</option>
				<option value="199">Descrizione variante</option>
				<option value="201">adasd</option>
				<option value="212">blu</option>
				<option value="213">verde</option>
				<option value="214">viola</option>
			</select>
			<div class="clearfix"></div>
		</div>
		<div class="clearfix"></div>
	</div>

	<div class="form-group">
		<label for="" class="col-xs-12 control-label">Select room</label>


		<div class="col-xs-12 ">
			<select data-selectprod-id="153"
				class="form-control selectprodmaterials " name="materialeProd[]">
				<option selected="" value="">...</option>
				<option value="1">Cotton</option>
			</select>
			<div class="clearfix"></div>
		</div>
		<div class="clearfix"></div>
	</div>

	<div class="col-xs-12">
		<hr>
		<button type="button" class="btn btn-primary btn-duplicate">Duplicate!</button>
	</div>

</div>