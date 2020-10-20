@foreach ($categories as $cat)

            <li>

                <a href="{{ route('products.index', ['category_id' => $cat->id]) }}"> {{ $cat->name }} </a>

            </li>


            @php
            $children = TCG\Voyager\Models\Category::where('parent_id', $cat->id)->get();
            @endphp

            @if ($children->isNotEmpty())

                @foreach ($children as $child)

                    <ul>
                        <li>
                            <a href="{{ route('products.index', ['category_id' => $child->id]) }}"> {{ $child->name }} </a>
                            {{-- {{ $child->name }} --}}

                        </li>
                    </ul>

                    {{-- @php
                    $grandChild = TCG\Voyager\Models\Category::where('parent_id', $child->id)->get();
                    @endphp

                    @if ($grandChild->isNotEmpty())

                        <ul>
                            @foreach ($grandChild as $c)
                                <li>{{ $c->name }}</li>
                            @endforeach
                        </ul>

                    @endif --}}

                @endforeach

            @endif


        @endforeach















        DB::table('gift_card_purchases')
                        ->where('user_id', auth()->id())
                        ->decrement('amount', $price);
                    $newCard = GiftCardPurchase::where('user_id', '=', auth()->id(), 'and', 'uid', '=', $request->input('uid'))->get();
                    if ($newCard[0]->amount == 0) {
                        DB::table('gift_card_purchases')
                            ->delete($newCard[0]->id);
                    }
                    $order->payment_method = 'gift_card';
                    $order->save();
                    $order->generateSubOrders();
                    $cartItems = \Cart::session(auth()->id())->getContent();
                    return redirect()->route('dash')->withMessage('Order Placed');