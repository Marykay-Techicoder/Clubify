<?php 
namespace App\Http\Controllers;

use App\Models\Event;
use Illuminate\Http\Request;
use App\Notifications\NewEventNotification;
use Illuminate\Support\Facades\Notification;

class EventController extends Controller
{
    public function index()
    {
        $events = Event::latest()->get();
        $notificationCount = auth()->user()->unreadNotifications->count();
        return view('dashboard', compact('events', 'notificationCount'));
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'event_name' => 'required',
            'date' => 'required|date',
            'time' => 'required',
            'location' => 'required',
            'event_type' => 'required',
            'description' => 'required',
            'host' => 'required',
            'others' => 'nullable',
            'image' => 'nullable|image|max:2048'
        ]);

        if ($request->hasFile('image')) {
            $path = $request->file('image')->store('events', 'public');
            $validated['image'] = $path;
        }

        $event = Event::create($validated);

        // Send notification to all users
        $users = \App\Models\User::all();
        Notification::send($users, new NewEventNotification($event));

        return redirect()->route('dashboard')->with('success', 'Event created successfully');
    }

    public function edit(Event $event)
    {
        return view('events.edit', compact('event'));
    }

    public function update(Request $request, Event $event)
    {
        $validated = $request->validate([
            'event_name' => 'required',
            'date' => 'required|date',
            'time' => 'required',
            'location' => 'required',
            'event_type' => 'required',
            'description' => 'required',
            'host' => 'required',
            'others' => 'nullable',
            'image' => 'nullable|image|max:2048'
        ]);

        if ($request->hasFile('image')) {
            $path = $request->file('image')->store('events', 'public');
            $validated['image'] = $path;
        }

        $event->update($validated);

        return redirect()->route('dashboard')->with('success', 'Event updated successfully');
    }

    public function destroy(Event $event)
    {
        $event->delete();
        return redirect()->route('dashboard')->with('success', 'Event deleted successfully');
    }
}