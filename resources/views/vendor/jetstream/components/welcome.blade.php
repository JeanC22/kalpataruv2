<div class="row justify-content-center my-5">
    <div class="col-md-12">
        <div class="card shadow bg-light ">
            <div class="card-body bg-white px-5 py-3 border-bottom rounded-top">
                <div class="mx-3 my-3">
                    <div>
                        <x-jet-application-logo style="width: 317px;" />
                    </div>

                    <h3 class="h3 my-4">
                        KALPATARUV2
                    </h3>

                    <div class="text-muted">
                        <div class="fs-4">
                        Bienvenid@ {{Auth::user()->name}} Gracias por iniciar sesión.<br>
                        </div>
                        En este apartado tendras la potestad de escoger a donde quieres dirigirte de la pagina web.
                    </div>
                </div>
            </div>
            <div class="row g-0">
                <div class="col-md-6 pe-0">
                    <div class="card-body border-right border-bottom p-3 h-100">
                        <div class="d-flex flex-row bd-highlight mb-3">
                            <div>
                                <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADwAAAA8CAYAAAA6/NlyAAAABmJLR0QA/wD/AP+gvaeTAAACWUlEQVRoge3ZT28NYRTH8U81aSwkhJDQaggrsWFrQVjVn+pWvAERraWIxMI7kFj4FwtLC0GKN8BWVzZCI1GWqi3R0KYWc6t1Q3vvzJm503i+yVncm8lvzu8+Z55z7jMkEolEor50VXSffpzGCexCX+P7CbzHKB7jQ0X5lEYvbmEOC6vEPB7IfpA1yRBmrG60OaYx2IF8C3FRtmLtml2+2iOVZ52TIcXMLjdd+5Xuk6+MVyrvHZU6aJN74swuxp1KHbRBv9Z243ZjzlIbK8y6KCHZs9sdqLdIt6yHhxBpeCBQq5njUUKRhvcGajWzp0Tt3ETuzs0xE5Vk5Cy9EKj1N0JyjSzpNUGk4a+BWs1MRwlFGv4UqFWadqTh8UCt0rQjDT8N1GpmtETt3OxUzmj5U+BoGc1d8YZvVuqgTXplO2qU2Slsr9RBDgbElPY8TlWce25GFD/iGa4864IMylfeUzjZgXxD2Irrsp22lVW9r+RntqqD+D5LB/G7/XkQPy7r4U8anxOJRCLx31JmW+rGQRzAfuyTtaNN2Ni45ots0JjA60a8wpisL9eebTiPR5iUf7T8jIc4JxteakUPzuK51iaqPP+Hn+FM414dYwuuyM6bok3+Kz7iMjZX4O83PbIX3kVKtmhM4hLWl+zVYdns2ymjzfEWh8ow2oVryjmzKhpzuCqw43ThRg2MrRa3o0wP18BMq3EhwvC7GhhpNd6sZqaVEviugt0wiG/YsNIFrbx5GIvJpRJCcj2qnAkqOn7I2mYIx/ASszUw1hyzeIEjUWYTiUQikUiUwy/dxbPPPkkycAAAAABJRU5ErkJggg=="/>                            </div>
                            <div class="ps-3">
                                <div class="mb-2">
                                    <a href="{{ route('profile.show') }}" class="h5 font-weight-bolder text-decoration-none text-dark">PERFIL</a>
                                </div>
                                <p class="text-muted">
                                    Aquí podras ver los deseos que hallas creado y hallas dado me gusta y editar tu perfil.
                                </p>
                                <a href="{{ route('profile.show') }}" class="text-decoration-none">
                                    <div class="mt-3 d-flex align-content-center font-weight-bold text-primary">
                                        <div>VER TU PERFIL</div>

                                        <div class="ms-1 text-primary">
                                            <svg viewBox="0 0 20 20" fill="currentColor" width="16" class="arrow-right w-4 h-4"><path fill-rule="evenodd" d="M10.293 3.293a1 1 0 011.414 0l6 6a1 1 0 010 1.414l-6 6a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-4.293-4.293a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 ps-0">
                    <div class="card-body border-bottom p-3 h-100">
                        <div class="d-flex flex-row bd-highlight mb-3">
                            <div>
                                <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAABmJLR0QA/wD/AP+gvaeTAAAEDUlEQVRoge3YW2hcVRQG4C9JtdCkjbVGa72Bl6HUJloR9ElsxVJUVNQ+qA8i+KLWSh9svT36UkxaL1RtRQqKfShiRcWKUm9VgyAirVhbRWvwgkFQYlIUNePD3ifnzDiTzEwml4fzwyY5a++19vpn7bPWOpscOXLkyDHL8D6OYAM6Z9iXSeEwinH8gW1YOqMeNYgNUiLZ8SHWom3mXKsPnUIkKpEp4mvciwUT2DkV6/EqBnAMw0LE38VD6Gm++6XYptT5H7AZ32ZkQ3gShQr69+Av1X+M7OjH5VNFZClGMySK+EL4la/Dvowjo9iLNWjJ2FiJp3C7QLY9jgKuwXb8krHzIuZNBZk34wabcTBD5uQ4vzw6M5Jx5jDWYX6Ne7QLR2wo6n8q/FhNxdXR+FEsxoH4fKhss07hnflO6bHbjmU17lWIdov4TJMj0yrUkyKuFyKRROagNDIJ2nCD8CInhP7F61it9NhVwklCIinihaYwyGB9NPxOfJ6ITIIePCtkqoTUIdyFjnH2WybNmJdN0vcSLJCe3+4oq5UMLML9QvpNCP2OLTinis7Dcd3Hk/R9DMfHv09Ewzsyc/WQgTm4CR8oPXbPVFjbjsG4ZnmDvo/hEuyK/xeEFDuCEzNr6iUDK/C50uJaCTvi/IP1Op5Fq5Ch/sEZUfZGNLyxbG2tZFbgFWltGsaj6Kqy/tq4bl9DDCKuiEZ+lqbBNVH2vXBMsuhSmpoXZ+a6sTtDYASPm7hWFOL6I42SgEeikd6MrAVfRfmNFXTKI7MKe5RGoFdtx49QUJN6VDfacKu0sN1RNr8uyt+rot8lJZOMEfURSDA36v9dp54CPsk4MCxU9izmC6mziAuq2FkV5//UGIEEXdI+rh99OH8ipYvxq7QduU31FmFrXPdclfk9/n8sG0G3yp3yLlUSxBL8FBe9bPyqC+cK+f+Y0FJkcaE0TZ/SkPsp5mBh9G+lUMuS5vQozitXeClOvo3jatzktajzQJm8WdGohtPxkTR7LkomeqSZ4bQ6DK6OegPSVNzMaIyHudgf99+dCLdEwWN1GmvBl1F3bZRNdTSyWCIko1FcROj7G+0y74y6+01fNLLojftvhd/iw8IGDHVk9JPeqa85PtaES+OeBwi5viicu0bQp7TwTVc04ATpJ8HYN8KZDRo7W2gspzsahFY/Kdzeig83T8Lg0/jG9EaD8J0y1lQmvdPeaXaiGdgk+L6TUFCS3unKGXSqXrTjR8HvqxLhxigYVP0berbheekN5djNTKu05RgUqvZsRbuUxJAK3XCHlExRuGG8BWdJLyBmCvOETniT9DgNGedVaMV90iI3W0e/Gr5LCAngbiEqA2q/UZ+qMSLcJ+8UXuyJbitz5MiRI0eOuvAfqwabZn08qkkAAAAASUVORK5CYII="/>                            </div>
                            <div class="ps-3">
                                <div class="mb-2">
                                    <a href="https://laracasts.com" class="h5 font-weight-bolder text-decoration-none text-dark">CREAR DESEO</a>
                                </div>
                                <p class="text-muted">
                                    Aquí podras crear deseos y enviarlos para que un administrador lo valide y sea aceptado, se te redigira a la pagina principal donde tendras la opcion de crear en la parte superior.
                                </p>
                                <a href="{{Route('home')}}" class="text-decoration-none">
                                    <div class="mt-3 d-flex align-content-center font-weight-bold text-primary">
                                        <div>CREAR DESEO</div>

                                        <div class="ms-1 text-primary">
                                            <svg viewBox="0 0 20 20" fill="currentColor" width="16" class="arrow-right w-4 h-4"><path fill-rule="evenodd" d="M10.293 3.293a1 1 0 011.414 0l6 6a1 1 0 010 1.414l-6 6a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-4.293-4.293a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 pe-0">
                    <div class="card-body border-right p-3 h-100">
                        <div class="d-flex flex-row bd-highlight mb-3">
                            <div>
                                <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAABmJLR0QA/wD/AP+gvaeTAAACnElEQVRoge2Zz2rVQBTGfxWpN668d2m7t390J1VE1+7UJ5Ba0IULl0UrIi3UB+h7qLXqI5RSxJWLKu1Ka2tBbe1d6IVAXMwEh8kkmZlMGqH54MC9kznnfF8mczKTgRYtWtjgNLAAbAExkNRkscwxD0Qhya/VSDrPVkOJWGiAfGpPQwjYUgI+AoZDBM3BMDCn5NsMEVR95uskn+KUki8u6zxkETBx7B8C1jlP1EykdrQCmkZVAc+A39IWDe1lZVL3qwVqQhVDQF+51s9pL7M+WeTlzKDKCCTAEvBH2pKhvQyqnxfaMto0jr2Atgpx3KuQDazvRkBcR+wFPpR1/F/LqDVONpi7B9wCbgBjwKhs3wY2gBVgGdivmqjoESqqQgPF7xdwVV6LgMeyrWyCHyB2aJX2xq5VCK19AFyR7aPAewviur0DRkILAHHXTSOwyL8ReKCQ3/Ygn9oXXxEhqlCE3503jUSnCQFPApBP7eFRC+iRnbA/gbvAWaALTAM/gO/yd1deu4eoQvrE7oYSkFeFVMxoMWLgkqHfRWk6LpP9nDltT9+vCqlY1mK8cUku8VaL8SK9UMdaSMe49v+jR64N7f+Ei3PVOXCoxVjxiPFai3Ho4hxaQAxMOfhPkZ0DRyrgkxYjAfaA8xa+54CvBn/9kSpEVQEvDQQS4BvFz/IEsJvj+9yFQFUBd3JIpCNxweAzBuwU+N12IVD183oP8fIpEjGp9J9EjE5e/33gjAsB9YBjzlOEemiRJyJ9ke2V9J11TT5fErDIVhHvmg5iIeYbJ7V1PBZzkSTim/S+jDOCWBL7xvmMWB95IUJssjdxP2YdANcUET4jsV6FfGh0EEvioomtTthZxLmZEU1+ZegCN6WZNvWvpB00wq6FJf4CBWBPqLpCQhQAAAAASUVORK5CYII="/>
                            </div>
                            <div class="ps-3">
                                <div class="mb-2">
                                    <a href="https://getbootstrap.com/" class="h5 font-weight-bolder text-decoration-none text-dark">MIS DESEOS</a>
                                </div>
                                <p class="text-muted">
                                    Aquí podras ver los deseos que haz creados y han sido aceptados y los que aun no ha aceptado ningun administrador.
                                </p>
                                <a href="de" class="text-decoration-none">
                                    <div class="mt-3 d-flex align-content-center font-weight-bold text-primary">
                                        <div>VER DESEO</div>

                                        <div class="ms-1 text-primary">
                                            <svg viewBox="0 0 20 20" fill="currentColor" width="16" class="arrow-right w-4 h-4"><path fill-rule="evenodd" d="M10.293 3.293a1 1 0 011.414 0l6 6a1 1 0 010 1.414l-6 6a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-4.293-4.293a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 ps-0">
                    <div class="card-body p-3 h-100">
                        <div class="d-flex flex-row bd-highlight mb-3">
                            <div>
                                <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAABmJLR0QA/wD/AP+gvaeTAAACNklEQVRoge3YPWvVYBiH8V9bK6jFUtD6UooOXVwcXLSTil9AEAURdNdBBAfRb+AsToofwEFQLHVxEHwbRCwWBEFBFEW0WBRqa7UOSerhmHOa5OQkKeSC/3BCuJ/rPkmeJ3moqampWS1sxBlM4COWsIA3mMQ5jCSoMxKeew9vwxpLYc0JnMZgnuJ9OI9v4UDtMo9rGI6pM4zr4Tkr1ZnFBfR3Kj+E+wkGbM4XHGioczA8lrbOY2zJKj+I5xkGbbwaJ8Ik+ddb5aX4K9qWHtzpYNAoC/iVQ50pDKRp4GQOg+ady0nlB/C5AsJxV3OsWbY3poEj2Jy02wLpx6kkJ04o/99ulVfNsj0xDbyXbEEqgz9YL5jV8P8ttAbbizRKSS+2NR9oZFHQZZWZb/wR9xDPFCSShd+CV5pl4hp4VoxLJqYx13ggroEHxbhkIpHbDsFzUPaUGZd9STudrIBsc6bET/uxjFdAuDlHk8pH3KqAdJSn4p/XtoziewXkF7EnrXzE8Qo0cCmrfMTVEuXvynDrNNOPhyXIv8OmTuUjRsOCRcnP6uC+b8WYf/tB3cwc9uctH7Fb8LLXLflFwRdhV9mLr12Qn5dhscrKLsGXW17yP3G4KPmInXjdofiSYLE8VLD7MlvxYgXBdpmR4g2zWwzhkfTyHwSTQiXYINguTyo/LVhbKsVa3LSy/BM5rrB504crWsvfxrrS7FJwVrCD0Ch/Q7DvtGo4hk/4gYslu3REX9kCNTU1FeYvT+fivmlYTZIAAAAASUVORK5CYII="/>                            </div>
                            <div class="ps-3">
                                <div class="mb-2">
                                    <span class="h5 font-weight-bolder text-decoration-none text-dark"> MIS ME GUSTAS</span>
                                </div>
                                <p class="text-muted">
                                    Aquí podras ver a los deseos los cuales le haz dado me gustas.
                                </p>
                                <a href="de" class="text-decoration-none">
                                    <div class="mt-3 d-flex align-content-center font-weight-bold text-primary">
                                        <div>VER MIS ME GUSTAS</div>

                                        <div class="ms-1 text-primary">
                                            <svg viewBox="0 0 20 20" fill="currentColor" width="16" class="arrow-right w-4 h-4"><path fill-rule="evenodd" d="M10.293 3.293a1 1 0 011.414 0l6 6a1 1 0 010 1.414l-6 6a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-4.293-4.293a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
