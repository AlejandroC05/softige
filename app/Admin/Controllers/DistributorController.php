<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\Distributor;

class DistributorController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Distributor';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Distributor());

        $grid->column('id', __('Id'));
        $grid->column('Nombres', __('Nombres'));
        $grid->column('Direccion', __('Direccion'));
        $grid->column('Producto', __('Producto'));
        $grid->column('Telefono', __('Telefono'));
        $grid->column('Correo', __('Correo'));
        $grid->column('Pago', __('Pago'));
        $grid->column('Estado', __('Estado'));
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
        $show = new Show(Distributor::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('Nombres', __('Nombres'));
        $show->field('Direccion', __('Direccion'));
        $show->field('Producto', __('Producto'));
        $show->field('Telefono', __('Telefono'));
        $show->field('Correo', __('Correo'));
        $show->field('Pago', __('Pago'));
        $show->field('Estado', __('Estado'));
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
        $form = new Form(new Distributor());

        $form->text('Nombres', __('Nombres'));
        $form->text('Direccion', __('Direccion'));
        $form->text('Producto', __('Producto'));
        $form->text('Telefono', __('Telefono'));
        $form->text('Correo', __('Correo'));
        $form->text('Pago', __('Pago'));
        $form->text('Estado', __('Estado'));
        $form->text('Notas', __('Notas'));

        return $form;
    }
}
