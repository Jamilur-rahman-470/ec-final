@component('mail::message')
# Invoice Paid

Thank for the Purchase

Here is your receipt.

<table class="table">
    <thead>
        <tr>
            <th>Name</th>
            <th>Price</th>
            <th>Quantity</th>
        </tr>
    </thead>
    <tbody>
        @foreach ($order->items as $item)
        <tr>
            <td scope="row">{{$item->name}}</td>
            <td>{{$item->pivot->price}}</td>
            <td>{{$item->pivot->quantity}}</td>
        </tr>
        @endforeach
    </tbody>
</table>

Total : {{$order->grand_total}}

@component('mail::button', ['url' => ''])
Button Text
@endcomponent

Thanks,<br>
{{ config('app.name') }}
@endcomponent
