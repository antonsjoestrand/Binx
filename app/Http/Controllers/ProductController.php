<?php



namespace App\Http\Controllers;



use App\Models\Product;

use Illuminate\Http\Request;



class ProductController extends Controller

{

    /**

     * Display a listing of the resource.

     *

     * @return \Illuminate\Http\Response

     */

    //  public function __construct()

    // {

    //     $this->middleware('auth');

    // }

    public function index()

    {

        $products = Product::latest()->paginate(20);

        return view('index',compact('products'))

            ->with('i', (request()->input('page', 1) - 1) * 5);

    }

    public function home()

    {

        $products = Product::latest()->paginate(20);

        return view('home',compact('products'))

            ->with('i', (request()->input('page', 1) - 1) * 5);

    }

    public function adminHome()

    {

        $products = Product::latest()->paginate(20);

        return view('adminHome',compact('products'))

            ->with('i', (request()->input('page', 1) - 1) * 5);

    }



    /**

     * Show the form for creating a new resource.

     *

     * @return \Illuminate\Http\Response

     */

    public function create()

    {

        return view('products.create');

    }



    /**

     * Store a newly created resource in storage.

     *

     * @param  \Illuminate\Http\Request  $request

     * @return \Illuminate\Http\Response

     */

    public function store(Request $request)

    {

        $request->validate([

            'name' => 'required',

            'short_description' => 'required',

            'description' => 'required',

            'price' => 'required',

            'image' => 'required|mimes:jpeg,png,jpg,gif,svg,webp|max:2048',

            'status' => 'required',

        ]);

        $input = $request->all();

        if ($image = $request->file('image')) {
            $destinationPath = 'images/';
            $profileImage = date('YmdHis') . "." . $image->getClientOriginalExtension();
            $image->move($destinationPath, $profileImage);
            $input['image'] = "$profileImage";
        }

        Product::create($input);

        return redirect()->route('admin.home')

                        ->with('success','Product created successfully');

    }



    /**

     * Display the specified resource.

     *

     * @param  \App\Product  $product

     * @return \Illuminate\Http\Response

     */

    public function show(Product $product)

    {

        return view('products.show',compact('product'));

    }



    /**

     * Show the form for editing the specified resource.

     *

     * @param  \App\Product  $product

     * @return \Illuminate\Http\Response

     */

    public function edit(Product $product)

    {

        return view('products.edit',compact('product'));

    }



    /**

     * Update the specified resource in storage.

     *

     * @param  \Illuminate\Http\Request  $request

     * @param  \App\Product  $product

     * @return \Illuminate\Http\Response

     */

    public function update(Request $request, Product $product)

    {

        $request->validate([

            'name' => 'required',

            'short_description' => 'required',

            'description' => 'required',

            'price' => 'required',

            'status' => 'required',

        ]);

        $input = $request->all();

        if ($image = $request->file('image')) {
            $destinationPath = 'images/';
            $profileImage = date('YmdHis') . "." . $image->getClientOriginalExtension();
            $image->move($destinationPath, $profileImage);
            $input['image'] = "$profileImage";
        } else {
            unset($input['image']);
        }

        $product->update($input);

        return redirect()->route('admin.home')

                        ->with('success','Product updated successfully');

    }



    /**

     * Remove the specified resource from storage.

     *

     * @param  \App\Product  $product

     * @return \Illuminate\Http\Response

     */

    public function destroy(Product $product)

    {

        $product->delete();



        return redirect()->route('admin.home')

                        ->with('success','Product deleted successfully');

    }

}