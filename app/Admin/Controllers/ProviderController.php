<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\Provider;

class ProviderController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Provider';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Provider());

        $grid->column('id', __('Id'));
        $grid->column('Nombres', __('Nombres'));
        $grid->column('Dirección', __('Dirección'));
        $grid->column('Teléfono', __('Teléfono'));
        $grid->column('Correo', __('Correo'));
        $grid->column('Condición de pago', __('Condición de pago'));
        $grid->column('Estado de pago', __('Estado de pago'));
        $grid->column('Precio', __('Precio'));
        $grid->column('Producto suministrado', __('Producto suministrado'));
        $grid->column('Notas', __('Notas'));
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Provider::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('Nombres', __('Nombres'));
        $show->field('Dirección', __('Dirección'));
        $show->field('Teléfono', __('Teléfono'));
        $show->field('Correo', __('Correo'));
        $show->field('Condición de pago', __('Condición de pago'));
        $show->field('Estado de pago', __('Estado de pago'));
        $show->field('Precio', __('Precio'));
        $show->field('Producto suministrado', __('Producto suministrado'));
        $show->field('Notas', __('Notas'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Provider());

        $form->text('Nombres', __('Nombres'));
        $form->text('Dirección', __('Dirección'));
        $form->text('Teléfono', __('Teléfono'));
        $form->text('Correo', __('Correo'));
        $form->text('Condicion de pago', __('Condicion_de_pago'));
        $form->text('Estado de pago', __('Estado_de_pago'));
        $form->text('Precio', __('Precio'));
        $form->text('Producto suministrado', __('Producto_suministrado'));
        $form->text('Notas', __('Notas'));

        return $form;
    }
}
