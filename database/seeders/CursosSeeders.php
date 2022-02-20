<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class CursosSeeders extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        $data = [
            [
            'nombreCurso' => '1 Bachillerato Cientifico-Tecnologico',
            ],
        [
            'nombreCurso' => '2 Bachillerato Cientifico-Tecnologico',
        ],
        [
            'nombreCurso' => '1 Bachillerato de Ciencias Sociales',
        ],
        [
            'nombreCurso' => '2 Bachillerato de Ciencias Sociales',
        ],
        [
            'nombreCurso' => '1 Formacion de Servicios Administrativos',
        ],
        [
            'nombreCurso' => '2 Formacion de Servicios Administrativos',
        ],
        [
            'nombreCurso' => '1 Grado medio de Sistemas Microinformaticos y Redes',
        ],
        [
            'nombreCurso' => ' 2 Bachillerato Cientifico-Tecnologico ',
        ],
        [
            'nombreCurso' => '1 Grado medio de Gestion Administrativa',
        ],
        [
            'nombreCurso' => '2 Grado medio de Gestion Administrativa',
        ],
        [
            'nombreCurso' => '1 Grado medio de Actividades Comerciales',
        ],
        [
            'nombreCurso' => '2 Grado medio de Actividades Comerciales',
        ],
        [
            'nombreCurso' => '1 Grado superior de Administracion de Sistemas Informaticos en Red',
        ],
        [
            'nombreCurso' => '2 Grado superior de Administracion de Sistemas Informaticos en Red',
        ],
        [
            'nombreCurso' => '1 Grado superior de Desarollo de Aplicaciones Web',
        ],
        [
            'nombreCurso' => '2 Grado superior de Desarollo de Aplicaciones Web',
        ],
        [
            'nombreCurso' => '1 Grado Superior de Administración y Finanzas es',
        ],
        [
            'nombreCurso' => '2 Grado Superior de Administracion y Finanzas es',
        ],
        [
            'nombreCurso' => '2 Grado Superior de Administracion y Finanzas eu',
        ],
        [
            'nombreCurso' => '1 Grado Superior de Marketing y Publicidad',
        ],
        [
            'nombreCurso' => '2 Grado Superior de Marketing y Publicidad',
        ],
        [
            'nombreCurso' => '1 Grado Superior de Integración Social',
        ],
        [
            'nombreCurso' => '2 Grado Superior de Integración Social',
        ],
    ];

        DB::table('cursos')->insert($data);
           
        
    }
}
