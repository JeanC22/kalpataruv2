<x-app-layout>
    <x-slot name="header">
        <link href="{{ URL::asset('/css/app.css') }}" rel="stylesheet">

        <h2 class="h4 font-weight-bold">
            {{ __('KALPATARUV2') }}
        </h2>
    </x-slot>

    <x-jet-welcome />
</x-app-layout>