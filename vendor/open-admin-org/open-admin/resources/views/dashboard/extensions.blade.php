<style>
    .ext-icon {
        color: rgba(0,0,0,0.5);
        margin-left: 10px;
    }
    .installed {
        color: #00a65a;
        margin-right: 10px;
    }
    a {
        text-decoration: none;
        color: red;
    }
    a:hover {
        color: red;
    }
</style>
<div class="card box-default">
    <div class="card-header with-border">
        <h3 class="card-title">Clientes</h3>

        <div class="card-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-bs-toggle="collapse" href="#extensions" role="button" aria-expanded="true" aria-controls="extensions">
                <i class="icon-minus"></i>
            </button>
        </div>
    </div>
    <!-- /.box-header -->
    <div class="card-body collapse show text-center" id="extensions">
        <p>Vea los clientes haciendo clic <a href="/admin/clients">aquí</a></p>
        <a href="/admin/clients"><img src="https://img.freepik.com/free-photo/young-friends-enjoying-new-technologies_23-2147859206.jpg?t=st=1718413366~exp=1718416966~hmac=ec5829146c8e02c742be5d28176103a12c85bc123fa108df4a167b1f32c1246b&w=1380" alt=""></a>
        <!--
        <ul class="products-list product-list-in-box">

            @foreach($extensions as $extension)
            <li class="item">
                <div class="product-img">
                    <i class="icon-{{$extension['icon']}} fa-2x ext-icon"></i>
                </div>
                <div class="product-info">
                    <a href="{{ $extension['link'] }}" target="_blank" class="product-title">
                        {{ $extension['name'] }}
                    </a>
                    @if($extension['installed'])
                        <span class="pull-right installed"><i class="icon-check"></i></span>
                    @endif
                </div>
            </li>
            @endforeach

            "/.item"
        </ul> 
        -->
    </div>
    <!-- /.box-body -->
    <!-- <div class="card-footer text-center">
        <a href="https://github.com/open-admin-org" target="_blank" class="uppercase">View All Extensions</a>
    </div> -->
    <!-- /.box-footer -->
</div>