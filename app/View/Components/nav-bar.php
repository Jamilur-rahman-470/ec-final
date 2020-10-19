<?php

namespace App\View\Components;

use Illuminate\View\Component;
use App\Wallet;

class nav-bar extends Component
{
    /**
     * Create a new component instance.
     *
     * @return void
     */
    public $helo = 'hhdh';


    public function __construct()
    {
        //

    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\View\View|string
     */
    public function render()
    {
        return view('components.nav-bar');
    }
}
