<x-app-layout>
  <x-slot name="header">
    <div class="flex justify-between items-center">
      <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
        {{ __("Event Dashboard") }}
      </h2>
      <div class="relative">
        <a href="{{ route('notifications.index') }}" class="text-gray-600 hover:text-gray-900">
          <i class="fas fa-bell"></i>
          @if($notificationCount > 0)
          <span
            class="absolute -top-2 -right-2 bg-red-500 text-white rounded-full w-5 h-5 flex items-center justify-center text-xs">
            {{ $notificationCount }}
          </span>
          @endif
        </a>
      </div>
      <button onclick="toggleForm()" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">
        Add Event
      </button>
    </div>
    </div>


    <div class="py-12">
      <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
        <!-- Add Event Form -->
        <div id="eventForm" class="mb-8 hidden">
          <div class="bg-white dark:bg-gray-800 overflow-hidden shadow-sm sm:rounded-lg">
            <div class="p-6 text-gray-900 dark:text-gray-100">
              <form action="{{ route('events.store') }}" method="POST" enctype="multipart/form-data">
                @csrf
                <div class="grid grid-cols-2 gap-4">
                  <div>
                    <label class="block mb-2">Event Name *</label>
                    <input style="color: black" type="text" name="event_name" required
                      class="w-full rounded border-gray-300" />
                  </div>

                  <div>
                    <label class="block mb-2">Date *</label>
                    <input style="color: black" type="date" name="date" required
                      class="ws-full rounded border-gray-300" />
                  </div>

                  <div>
                    <label class="block mb-2">Time *</label>
                    <input style="color: black" type="time" name="time" required
                      class="w-full rounded border-gray-300" />
                  </div>

                  <div>
                    <label class="block mb-2">Location *</label>
                    <input style="color: black" type="text" name="location" required
                      class="w-full rounded border-gray-300" />
                  </div>

                  <div>
                    <label class="block mb-2">Event Type *</label>
                    <input style="color: black" type="text" name="event_type" required
                      class="w-full rounded border-gray-300" />
                  </div>

                  <div>
                    <label class="block mb-2">Host *</label>
                    <input style="color: black" type="text" name="host" required
                      class="w-full rounded border-gray-300" />
                  </div>

                  <div class="col-span-2">
                    <label class="block mb-2">Description *</label>
                    <textarea style="color: black" name="description" required
                      class="w-full rounded border-gray-300"></textarea>
                  </div>

                  <div class="col-span-2">
                    <label class="block mb-2">Others</label>
                    <textarea name="others" style="color: black" class="w-full rounded border-gray-300"></textarea>
                  </div>

                  <div class="col-span-2">
                    <label class="block mb-2">Image</label>
                    <input style="color: black" type="file" name="image" class="w-full rounded border-gray-300" />
                  </div>

                  <div class="col-span-2">
                    <button type="submit" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">
                      Save Event
                    </button>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>

  </x-slot>
  <!-- Events Table -->
  <div class="bg-white dark:bg-gray-800 overflow-hidden shadow-sm sm:rounded-lg">
    <div class="p-6 text-gray-900 dark:text-gray-100">
      <table class="min-w-full">
        <thead>
          <tr>
            <th class="px-6 py-3 border-b">Event Name</th>
            <th class="px-6 py-3 border-b">Date</th>
            <th class="px-6 py-3 border-b">Time</th>
            <th class="px-6 py-3 border-b">Location</th>
            <th class="px-6 py-3 border-b">Actions</th>
          </tr>
        </thead>
        <tbody>
          @foreach($events as $event)
          <tr>
            <td class="px-6 py-4 border-b">{{ $event->event_name }}</td>
            <td class="px-6 py-4 border-b">{{ $event->date }}</td>
            <td class="px-6 py-4 border-b">{{ $event->time }}</td>
            <td class="px-6 py-4 border-b">{{ $event->location }}</td>
            <td class="px-6 py-4 border-b">
              <div class="flex space-x-2">
                <a href="{{ route('events.edit', $event) }}" class="text-blue-600 hover:text-blue-900">
                  <i class="fas fa-edit"></i>
                </a>
                <form action="{{ route('events.destroy', $event) }}" method="POST" class="inline">
                  @csrf @method('DELETE')
                  <button type="submit" class="text-red-600 hover:text-red-900">
                    <i class="fas fa-trash"></i>
                  </button>
                </form>
              </div>
            </td>
          </tr>
          @endforeach
        </tbody>
      </table>
    </div>
  </div>
  </div>
  </div>

  <script>
  function toggleForm() {
    const form = document.getElementById("eventForm");
    form.classList.toggle("hidden");
  }
  </script>
</x-app-layout>