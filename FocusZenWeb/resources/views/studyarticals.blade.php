@extends('layouts.web')

@section('content')
    <title>FocusZen | Study Articals</title>

<link rel="stylesheet" href="{{ asset('css/subpage.css') }}">

<section class="article-container container sec  wow fadeInDown">
    <h2>Articles on How to Stay Focused While Studying</h2>
    <p>Here are some useful articles that will help you improve focus and stay productive while studying</p>

    <ul class="article-list">
        @foreach ($articles as $article)
            <li>
                <a href="{{ $article['url'] }}" target="_blank">{{ $article['title'] }}</a>
            </li>
        @endforeach
    </ul>
</section>
@endsection
