@extends('layouts.app')


@section('content')
    <div class="container" style="height: 100vh" id='shop-create'>
        <div class="card shop-create p-5">
            <h2>Submit your shop</h2>

            <form action="{{ route('shops.store') }}" method="post">
                @csrf

                <div class="form-group">
                    <label for="name">Name of Shop</label>
                    <input placeholder="Shop Name" type="text" class="form-control" name="name" id=""
                        aria-describedby="helpId" placeholder="">
                </div>

                <div class="form-group">
                    <label for="description">Description</label>
                    <textarea class="form-control" placeholder="Shop Description" name="description" id=""
                        rows="3"></textarea>
                </div>

                <button type="submit" class="w-100 btn btn-primary">Submit</button>

            </form>
        </div>
    </div>

@endsection
