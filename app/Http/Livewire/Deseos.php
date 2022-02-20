<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Deseo;

class Deseos extends Component
{
    public $deseos;
    public function render()
    {
        $this->deseos = Deseo::all();
        return view('livewire.deseos');
    }
}
