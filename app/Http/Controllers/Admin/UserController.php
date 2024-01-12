<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
class UserController extends Controller
{
    public function index()
    {
        $users = User::paginate(10);
        return view('admin.users.index',compact('users'));
    }

    public function create()
    {
        return view('admin.users.create');
    }

    public function store(Request $request)
    {
  
        $validator = Validator::make($request->all(), [
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['required', 'string', 'min:8', 'confirmed'],
            'role_as' => ['required', 'integer'],
        ]);
        
    if ($validator->fails()) {
        return redirect()->back()->withErrors($validator)->withInput();
    }
        User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
            'role_as' => $request->role_as,
        ]);
return redirect('/admin/users')->with('message','User Created successfully');
    }

    public function edit(int $userId)
    {
        $user = User::findOrFail($userId);
        return view('admin.users.edit',compact('user'));
    }



    public function update(Request $request, int $userId)
    {
  
        $validator = Validator::make($request->all(), [
            'name' => ['required', 'string', 'max:255'],
            'password' => ['required', 'string', 'min:8'],
            'role_as' => ['required', 'integer'],
        ]);
        
    if ($validator->fails()) {
        return redirect()->back()->withErrors($validator)->withInput();
    }
        User::findOrFail($userId)->update([
            'name' => $request->name,
            'password' => Hash::make($request->password),
            'role_as' => $request->role_as,
        ]);
return redirect('/admin/users')->with('message','User Updated successfully');
    }


public function destroy(int $userId)
{
    $user = User::findOrFail($userId);
    $user->delete();
    return redirect('/admin/users')->with('message','User Deleted Successfully');
}

}
