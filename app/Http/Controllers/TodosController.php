<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Todo;

class TodosController extends Controller
{
    public function index(){
        $todos = Todo::all();
        return view('Todos.index')->with('todos',$todos);
    }

    public function show($todoId){
        $todo = Todo::find($todoId);
        return view('Todos.show')->with('todo',$todo);
    }

    public function create(){
        return view('Todos.create');
    }

    public function store(){

        $this->validate(request(), [
            'name' => 'required|min:6|max:50',
            'description' => 'required'
          ]);

        $data = request()->all();

        $todo = new Todo();
        $todo->name = $data['name'];
        $todo->description = $data['description'];
        $todo->is_completed = false;
        $todo->save();

        session()->flash('success', 'Todo created successfully.');

        return redirect('/todos');
    }

    public function edit($todoId){
        $todo = Todo::find($todoId);
        return view('Todos.edit')->with('todo',$todo);
    }

    public function update($todoId){
        $this->validate(request(), [
            'name' => 'required|min:6|max:50',
            'description' => 'required'
          ]);

        $data = request()->all();
        $todo = Todo::find($todoId);
        $todo->name = $data['name'];
        $todo->description = $data['description'];
        
        $todo->save();

        session()->flash('success', 'Todo updated successfully.');
        return redirect('/todos');

    }

    public function delete($todoId){
        $todo = Todo::find($todoId);
        $todo->delete();

        session()->flash('success', 'Todo deleted successfully.');
        return redirect('/todos');
    }

    public function complete($todoId)
    {
      $todo = Todo::find($todoId);  
      $todo->is_completed = !$todo->is_completed;
      $todo->save();
      
      return redirect('/todos');
    }
}
