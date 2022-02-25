<x-app-layout>
    <x-slot name="header">
        <link rel="stylesheet" href="{{ asset('css/app.css') }}">
        <script src="{{ URL::asset('js/app.js') }}"></script>
        <script src="{{ asset('js/app.js') }}" ></script>
        <h2 class="h4 font-weight-bold">
            {{ __('Perfil') }}
        </h2>
    </x-slot>

    <div>
        @if (Laravel\Fortify\Features::canUpdateProfileInformation())
            @livewire('profile.update-profile-information-form')

            <x-jet-section-border />
        @endif

        @if (Laravel\Fortify\Features::enabled(Laravel\Fortify\Features::updatePasswords()))
            @livewire('profile.update-password-form')

            <x-jet-section-border />
        @endif
    </div>
</x-app-layout>
