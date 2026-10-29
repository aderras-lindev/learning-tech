from django.shortcuts import render

# Create your views here.
from django.http import JsonResponse

def todo_list(request):
    # Creating a simple mock database list of tasks
    tasks = [
        {"id": 1, "task": "Learn Podman Basics", "completed": True},
        {"id": 2, "task": "Create a Bash Script", "completed": True},
        {"id": 3, "task": "Build a Django API", "completed": False},
    ]
    return JsonResponse({"tasks": tasks}, safe=False)

