<x-jet-form-section submit="updateProfileInformation">
    <link href="{{ URL::asset('/css/app.css') }}" rel="stylesheet">
    <script src="{{ URL::asset('/js/app.js') }}"></script>
    <div class="bg-light">
    <x-slot name="title" class="">
        {{ __('Informacion de perfil') }}
    </x-slot>
    
    <x-slot name="description">
        {{ __('Cambiar tus datos de nombre y correo') }}
    </x-slot>
    </div>
    <x-slot name="form">

        <x-jet-action-message on="saved">
            {{ __('Guardar.') }}
        </x-jet-action-message>


        <div class="w-md-75">
            <!-- Name -->
            <div class="mb-3">
                <x-jet-label for="name" value="{{ __('Nombre') }}" />
                <x-jet-input id="name" type="text" class="{{ $errors->has('name') ? 'is-invalid' : '' }}" wire:model.defer="state.name" autocomplete="name" />
                <x-jet-input-error for="name" />
            </div>

            <!-- Email -->
            <div class="mb-3">
                <x-jet-label for="email" value="{{ __('Correo') }}" />
                <x-jet-input id="email" type="email" class="{{ $errors->has('email') ? 'is-invalid' : '' }}" wire:model.defer="state.email" />
                <x-jet-input-error for="email" />
            </div>
        </div>
    </x-slot>

    <x-slot name="actions">
		<div class="d-flex align-items-baseline">
			<x-jet-button>
				{{ __('Guardar') }}
			</x-jet-button>
		</div>
    </x-slot>
</x-jet-form-section>