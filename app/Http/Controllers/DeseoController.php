<?php

namespace App\Http\Controllers;

use App\Models\Deseo;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;


class DeseoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $datos=$request->all();
        
        $rules= array (
            'textdeseo' => 'required',
           );

           $messages= array (
            'textdeseo.required' => 'Campo no puede estar vacio',
           );

           $validador= Validator::make($datos,$rules,$messages);
           if($validador->fails()){
            $errors=$validador->messages();
            $errors->add('mierror','No se ha podido enviar el deseo');
            \Session::flash('tipoMensaje','danger');
            \Session::flash('mensaje','Error, no se cumple los requisitos');
            //Volver con los errores

            return \Redirect::back()->withInput()->withErrors($validador);
        }else{
                 //Generar actividad
                $Deseo=new Deseo();
                $Deseo->texto=$datos["textdeseo"];
                $Deseo->usuario_id=Auth::user()->id;       
                $Deseo->save();
        try{
            //Almacenar en la BD
            //Almacenar el archivo en el servidor
    
                \Session::flash('tipoMensaje','success');
                \Session::flash('mensaje','Deseo enviado');

        }catch(\Exception $e){

            \Session::flash('tipoMensaje','danger');
            \Session::flash('mensaje','Deseo no enviado');


        }
        return \Redirect::back();
    }
}

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Deseo  $deseo
     * @return \Illuminate\Http\Response
     */
    public function show(Deseo $deseo)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Deseo  $deseo
     * @return \Illuminate\Http\Response
     */
    public function edit(Deseo $deseo)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Deseo  $deseo
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Deseo $deseo)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Deseo  $deseo
     * @return \Illuminate\Http\Response
     */
    public function destroy(Deseo $deseo)
    {
        //
    }
}