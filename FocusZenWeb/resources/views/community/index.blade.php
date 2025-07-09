@extends('layouts.web')
@section('content')
    <link rel="stylesheet" href="{{ asset('css/community.css') }}">

    <div class="row flex container sec">
        <div class="col-md-6 border-r">
            <h2 class="text-xl font-bold mb-3">Community Questions</h2>
            @foreach ($questions as $question)
                <div class="mb-3">
                    <a href="{{ route('questions.show', $question->id) }}" class="question-link">
                        {{ $question->content }}
                    </a>
                    <p class="text-sm text-gray-500 q-ask">Asked by {{ $question->user->name }}</p>
                </div>
            @endforeach
        </div>

        <div class="col-md-6 p-4">
            <h2 class="text-xl font-bold mb-4">Ask a Question</h2>
            <form action="{{ route('questions.store') }}" method="POST">
                @csrf
                <textarea name="content" rows="5" class="w-full p-2 border rounded" placeholder="Type your question..."></textarea>
                <button type="submit" class="btn-submit">Submit</button>

            </form>
        </div>
    </div>
@endsection
