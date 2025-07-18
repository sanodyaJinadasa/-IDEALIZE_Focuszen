<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class YouTubeAnalysisController extends Controller
{
    public function analyze(Request $request)
    {
        $url = $request->input('youtube_url');

        preg_match('/(?:youtube\.com\/.*v=|youtu\.be\/)([0-9A-Za-z_-]{11})/', $url, $matches);

        if (empty($matches)) {
            return back()->with('error', 'Invalid YouTube URL');
        }

        $videoId = $matches[1];
        if (empty($matches[1])) {
            return back()->with('error', 'Invalid YouTube URL or missing video ID.');
        }


        $scriptPath = base_path('scripts/youtube_analysis.py');


        $command = escapeshellcmd("python \"$scriptPath\" $videoId");
        \Log::info("YouTube Analysis Command: " . $command);

        exec($command . " 2>&1", $output, $returnVar);

        if ($returnVar !== 0) {
            return back()->with('error', 'Error analyzing YouTube video: ' . implode("\n", $output));
        }


        $analysisResult = implode("\n", $output);

        return view('youtube_form', [
            'analysisResult' => $analysisResult,
        ]);
    }
}
