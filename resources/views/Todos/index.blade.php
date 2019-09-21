@extends('Layout.app')

@section('title')
Todos
@endsection

@section('content')
<div class="container">
  <h1 class="text-center my-5">TODOS PAGE</h1>
  <div class="row justify-content-center">
    <div class="col-md-8">
      <div class="card card-default">
        <div class="card-header">
          Todos
        </div>

        <div class="card-body">
          <ul class="list-group">
            @foreach($todos as $todo)
            <li class="list-group-item">
              {{ $todo->name }}

              @if(!$todo->is_completed)
              <a href="/todos/{{ $todo->id }}/complete" style="color: white;"
                class="btn btn-secondary btn-sm float-right">Complete</a>
              @else
              <a href="/todos/{{ $todo->id }}/complete" style="color: white;"
                class="btn btn-dark btn-sm float-right">Incomplete</a>
              @endif
              <a href="/todos/{{ $todo->id }}" class="btn btn-primary btn-sm float-right mr-2">View</a>
            </li>
            @endforeach
          </ul>
        </div>
      </div>
    </div>
  </div>
</div>
@endsection