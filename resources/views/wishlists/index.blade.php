@extends('layouts.app')

@section('content')

<div class="containr my-5">
    <h2 class="text-center my-2">Your Whislist</h2>

    <table class="table container my-3">
        <thead>
            <tr>
                <th>UID</th>
                <th>PID</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($wishlists as $item)
            @php
                
            @endphp
            <tr>
            <td scope="row">{{$item->user_id}}</td>
            <td>
                {{$item->product_id}}
            </td>
            <td>
                <form method="POST" action="{{route('wishlists.destroy', $item->id)}}">

                    @method('DELETE')
                    @csrf

                    <input type="submit" value="Remove" class="btn btn-danger"/>

                </form>
            </td>
            </tr>
            @endforeach
            @foreach ($prod as $item)
                <p>{{$item->name}}</p>
            @endforeach
        </tbody>
    </table>


</div>

@endsection
