<?php

namespace App\Http\Controllers;

use App\Models\Music;
use App\Models\study_article;
use Illuminate\Http\Request;
use OpenAI;


class MusicController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('music');
    }

    public function chatbot()
    {
        return view('chatbot');
    }


    public function chat(Request $request)
    {

        // $request->validate([
        //     'message' => 'required|string'
        // ]);
        // $client = OpenAI::client('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');
        // $response = $client->completions()->create([
        //     'model' => 'gpt-4',
        //     'prompt' => $request->input('message'),
        //     'max_tokens' => 100
        // ]);

        // return response()->json(['reply' => $response['choices'][0]['text']]);

        $client = OpenAI::client('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');

        try {
            $response = $client->completions()->create([
                'model' => 'gpt-3.5-turbo',
                'prompt' => $request->input('message'),
                'max_tokens' => 100,
            ]);
            $reply = $response['choices'][0]['text'] ?? 'No reply received.';
        } catch (\OpenAI\Exceptions\ApiException $e) {
            $reply = 'Error: ' . $e->getMessage();
        }

        return response()->json(['reply' => trim($reply)]);
    }



    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(Music $music)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Music $music)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Music $music)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Music $music)
    {
        //
    }



    public function articalindex()
    {


      $articles = study_article::where('status', 1)
            ->orderBy('created_at', 'desc')
            ->get();

        return view('studyarticals', compact('articles'));
    }

}
