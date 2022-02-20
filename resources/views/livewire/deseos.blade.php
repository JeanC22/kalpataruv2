<x-slot name="header">
    <link href="{{ URL::asset('/css/app.css') }}" rel="stylesheet">

</x-slot>

<div>
    <table class="table-fixed w-100">
        <thead>
            <tr class="bg-dark text-white ">
                <th class="border border-dark border-4 p-2">ID</th>
                <th class="border border-dark border-4 p-2 text-center">DESCRIPCION</th>
                <th class="border border-dark border-4 p-2">ESTADO</th>
                <th class="border border-dark border-4 p-2">LIKES</th>
            </tr>
        </thead>
        <TBody>
            @foreach ($deseos as $deseo)
                <tr class="">
                    <td class="border border-dark p-2">{{$deseo->id}}</td>
                    <td class="border border-dark p-2">{{$deseo->texto}}</td>
                    @if ($deseo->estado == 0)
                    <td class="border border-dark p-4">inactivo</td>
                    @endif
                    @if ($deseo->estado == 1)
                    <td class="border border-dark p-4">activo</td>
                    @endif                    
                    <td class="border border-dark p-4">{{$deseo->likes}}</td>
                </tr>
            @endforeach
        </TBody>
    </table>

</div>
