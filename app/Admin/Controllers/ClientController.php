<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\Client;

class ClientController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Client';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Client());

        $grid->column('id', __('Id'));
        $grid->column('Nombre', __('Nombre'));
        $grid->column('Teléfono', __('Teléfono'));
        $grid->column('Direccion', __('Direccion'));
        $grid->column('Pago', __('Pago'));
        $grid->column('Estado', __('Estado'));
        $grid->column('Categoría', __('Categoría'));
        $grid->column('Comentarios', __('Comentarios'));
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
        $show = new Show(Client::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('Nombre', __('Nombre'));
        $show->field('Teléfono', __('Teléfono'));
        $show->field('Direccion', __('Direccion'));
        $show->field('Pago', __('Pago'));
        $show->field('Estado', __('Estado'));
        $show->field('Categoría', __('Categoría'));
        $show->field('Comentarios', __('Comentarios'));
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
        $form = new Form(new Client());

        $form->text('Nombre', __('Nombre'));
        $form->text('Teléfono', __('Teléfono'));
        $form->text('Direccion', __('Direccion'));
        $form->text('Pago', __('Pago'));
        $form->text('Estado', __('Estado'));
        $form->text('Categoría', __('Categoría'));
        $form->text('Comentarios', __('Comentarios'));

        return $form;
    }
}
