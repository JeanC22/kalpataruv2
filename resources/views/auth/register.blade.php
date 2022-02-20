<x-guest-layout>
    <x-jet-authentication-card>
        <x-slot name="logo">
            <x-jet-authentication-card-logo />
        </x-slot>

        <x-jet-validation-errors class="mb-4" />

        <form method="POST" class="p-3" action="{{ route('register') }}">
            @csrf

            <div>
                <x-jet-label for="name" value="{{ __('Name') }}" />
                <x-jet-input id="name" class="block mt-1 w-full" type="text" name="name" :value="old('name')" required autofocus autocomplete="name" />
            </div>

            <div class="mt-4">
                <x-jet-label for="email" value="{{ __('Email') }}" />
                <x-jet-input id="email" class="block mt-1 w-full" type="email" name="email" :value="old('email')" required />
            </div>

            <div class="mt-4">
                <x-jet-label for="password" value="{{ __('Password') }}" />
                <x-jet-input id="password" class="block mt-1 w-full" type="password" name="password" required autocomplete="new-password" />
            </div>

            <div class="mt-4">
                <x-jet-label for="password_confirmation" value="{{ __('Confirm Password') }}" />
                <x-jet-input id="password_confirmation"   type="password" name="password_confirmation" required autocomplete="new-password" />
            </div>
            
            <div class="mt-4">
                <x-jet-label for="curso_id" value="{{ __('curso') }}" />
                    <select name="curso" class="form-select block mt-1  w-full" id="curso_id">
                        <option value="all" selected >todos los cursos</option>
                        <option value="1">1 Bachillerato Cientifico-Tecnologico</option>
                        <option value="2">2 Bachillerato Cientifico-Tecnologico</option>
                        <option value="3">1 Bachillerato de Ciencias Sociales</option>
                        <option value="4">2 Bachillerato de Ciencias Sociales</option>
                        <option value="5">1 Formacion de Servicios Administrativos</option>
                        <option value="6">2 Formacion de Servicios Administrativos</option>
                        <option value="7">1 Grado medio de Sistemas Microinformaticos y Redes</option>
                        <option value="8">2 Grado medio de Sistemas Microinformaticos y Redes</option>
                        <option value="9">1 Grado medio de Gestion Administrativa</option>
                        <option value="10">2 Grado medio de Gestion Administrativa</option>
                        <option value="11">1 Grado medio de Actividades Comerciales</option>
                        <option value="12">2 Grado medio de Actividades Comerciales</option>
                        <option value="13">1 Grado superior de Administracion de Sistemas Informaticos en Red</option>
                        <option value="14">2 Grado superior de Administracion de Sistemas Informaticos en Red</option>
                        <option value="15">1 Grado superior de Desarollo de Aplicaciones Web</option>
                        <option value="16">2 Grado superior de Desarollo de Aplicaciones Web</option>
                        <option value="17">1 Grado Superior de Administración y Finanzas es</option>
                        <option value="18">2 Grado Superior de Administracion y Finanzas es</option>
                        <option value="19">2 Grado Superior de Administracion y Finanzas eu</option>
                        <option value="20">1 Grado Superior de Marketing y Publicidad</option>
                        <option value="21">2 Grado Superior de Marketing y Publicidad</option>
                        <option value="22">1 Grado Superior de Integración Social</option>
                        <option value="23">2 Grado Superior de Integración Social</option>
                    </select>
                    <div class="mt-4 d-none">
                        <x-jet-label for="role_id" value="{{ __('role_id') }}" />
                        <x-jet-input id="role_id"   type="text" name="role_id" value="0" required />
                    </div>
            </div>
            @if (Laravel\Jetstream\Jetstream::hasTermsAndPrivacyPolicyFeature())
                <div class="mt-4">
                    <x-jet-label for="terms">
                        <div class="flex items-center">
                            <x-jet-checkbox name="terms" id="terms"/>

                            <div class="ml-2">
                                {!! __('I agree to the :terms_of_service and :privacy_policy', [
                                        'terms_of_service' => '<a target="_blank" href="'.route('terms.show').'" class="underline text-sm text-gray-600 hover:text-gray-900">'.__('Terms of Service').'</a>',
                                        'privacy_policy' => '<a target="_blank" href="'.route('policy.show').'" class="underline text-sm text-gray-600 hover:text-gray-900">'.__('Privacy Policy').'</a>',
                                ]) !!}
                            </div>
                        </div>
                    </x-jet-label>
                </div>
            @endif

            <div class="flex items-center justify-end mt-4">
                <a class="underline text-sm text-gray-600 hover:text-gray-900" href="{{ route('login') }}">
                    {{ __('Already registered?') }}
                </a>

                <x-jet-button class="ms-4">
                    {{ __('Register') }}
                </x-jet-button>
            </div>
        </form>
    </x-jet-authentication-card>
</x-guest-layout>
