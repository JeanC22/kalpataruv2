
<x-guest-layout>
    <x-jet-authentication-card>
        <x-slot name="logo">
            <x-jet-authentication-card-logo />
        </x-slot>
        <section id="bg-kalpa">
            <div class="arriba"></div>
        </section>
        <x-jet-validation-errors class="mb-4" />

        <form method="POST" class="p-3 " action="{{ route('register') }}" >
            @csrf

            <div>
                <x-jet-label for="name" value="{{ __('Nombre') }}" />
                <x-jet-input id="name" class="block mt-1 w-full" type="text" name="name" :value="old('name')" required autofocus autocomplete="name" />
            </div>

            <div class="mt-4">
                <x-jet-label for="email" value="{{ __('Correo') }}" />
                <x-jet-input id="email" class="block mt-1 w-full" type="email" name="email" :value="old('email')" required />
            </div>

            <div class="mt-4">
                <x-jet-label for="password" value="{{ __('Contraseña') }}" />
                <x-jet-input id="password" class="block mt-1 w-full" type="password" name="password" required autocomplete="new-password" />
            </div>

            <div class="mt-4">
                <x-jet-label for="password_confirmation" value="{{ __('Contraseña De Confirmación') }}" />
                <x-jet-input id="password_confirmation"   type="password" name="password_confirmation" required autocomplete="new-password" />
            </div>
            
            <div class="mt-4">
                <x-jet-label for="curso_id" value="{{ __('Curso') }}" />
                    <select name="curso" class="form-select block  w-full" id="curso_id" required>   
                        {
                            <option value="1">1º Bachillerato Cientifico-Tecnologico</option>
                            <option value="2">2º Bachillerato Cientifico-Tecnologico</option>
                            <option value="3">1º Bachillerato de Ciencias Sociales</option>
                            <option value="4">2º Bachillerato de Ciencias Sociales</option>
                            <option value="5">1º Formacion de Servicios Administrativos</option>
                            <option value="6">2º Formacion de Servicios Administrativos</option>
                            <option value="7">1º Grado medio de Sistemas Microinformaticos y Redes</option>
                            <option value="8">2º Grado medio de Sistemas Microinformaticos y Redes</option>
                            <option value="9">1º Grado medio de Gestion Administrativa</option>
                            <option value="10">2º Grado medio de Gestion Administrativa</option>
                            <option value="11">1º Grado medio de Actividades Comerciales</option>
                            <option value="12">2º Grado medio de Actividades Comerciales</option>
                            <option value="13">1º Grado superior de Administracion de Sistemas Informaticos en Red</option>
                            <option value="14">2º Grado superior de Administracion de Sistemas Informaticos en Red</option>
                            <option value="15">1º Grado superior de Desarollo de Aplicaciones Web</option>
                            <option value="16">2º Grado superior de Desarollo de Aplicaciones Web</option>
                            <option value="17">1º Grado Superior de Administración y Finanzas es</option>
                            <option value="18">2º Grado Superior de Administracion y Finanzas es</option>
                            <option value="19">2º Grado Superior de Administracion y Finanzas eu</option>
                            <option value="20">1º Grado Superior de Marketing y Publicidad</option>
                            <option value="21">2º Grado Superior de Marketing y Publicidad</option>
                            <option value="22">1º Grado Superior de Integración Social</option>
                            <option value="23">2º Grado Superior de Integración Social</option>
                        }
                    </select>
                    <div class="mt-4 d-none">
                        <x-jet-label for="role_id" value="{{ __('role_id') }}" />
                        <x-jet-input id="role_id"   type="text" name="role_id" value="2" required />
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
                    {{ __('Ya estas registrado?') }}
                </a>

                <x-jet-button class="btn ms-4">
                    {{ __('Registrarme') }}
                </x-jet-button>
            </div>
        </form>
    </x-jet-authentication-card>
</x-guest-layout>
<section id="bg-kalpa">
    <div class="arriba"></div>
</section>