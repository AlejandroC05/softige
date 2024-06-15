<style>
    img {
        width: 470px;
        height: 250px;
    }
</style>
<div class="card box-default">
    <div class="card-header with-border">
        <h3 class="card-title">Productos</h3>

        <div class="card-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-bs-toggle="collapse" href="#environment" role="button" aria-expanded="true" aria-controls="environment">
                <i class="icon-minus"></i>
            </button>
        </div>
    </div>

    <!-- /.box-header -->
    <div class="card-body collapse show text-center" id="environment">
        <p>Haga clic <a href="/admin/products">aquí</a> para administrar los productos</p>
        <p>También puede <a href="/admin/product-management">descontar, eliminar o reducir</a> la cantidad de cada producto</p>
        <a href="/admin/products"><img src="{{ asset('img/products.jpg') }}" class="img-fluid img-thumbnail2" alt="Products"></a>
        <!-- /.table-responsive -->
    </div>
    <!-- /.box-body -->
</div>