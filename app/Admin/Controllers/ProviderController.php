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
        $grid->column('Nombre', __('Nombre'));
        $grid->column('Correo', __('Correo'));
        $grid->column('Teléfono', __('Teléfono'));
        $grid->column('Dirección', __('Dirección'));
        $grid->column('Pago', __('Pago'));
        $grid->column('Estado', __('Estado'));
        $grid->column('Productos', __('Productos'));
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
        $show->field('Nombre', __('Nombre'));
        $show->field('Correo', __('Correo'));
        $show->field('Teléfono', __('Teléfono'));
        $show->field('Dirección', __('Dirección'));
        $show->field('Pago', __('Pago'));
        $show->field('Estado', __('Estado'));
        $show->field('Productos', __('Productos'));
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

        $form->text('Nombre', __('Nombre'));
        $form->text('Correo', __('Correo'));
        $form->text('Teléfono', __('Teléfono'));
        $form->text('Dirección', __('Dirección'));
        $form->text('Pago', __('Pago'));
        $form->text('Estado', __('Estado'));
        $form->text('Productos', __('Productos'));
        $form->text('Notas', __('Notas'));

        return $form;
    }
}
